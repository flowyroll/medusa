.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc3d, %rsi
lea addresses_D_ht+0x1559d, %rdi
nop
nop
xor %r10, %r10
mov $106, %rcx
rep movsb
nop
nop
and $54229, %rbx
lea addresses_A_ht+0x1a9dd, %rcx
nop
sub %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm2
and $0xffffffffffffffc0, %rcx
vmovaps %ymm2, (%rcx)
nop
nop
dec %rsi
lea addresses_UC_ht+0x14fdd, %rdi
nop
nop
nop
sub $60954, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x94b4, %rsi
nop
nop
nop
nop
nop
xor $7380, %r15
movw $0x6162, (%rsi)
nop
sub %rbx, %rbx
lea addresses_normal_ht+0xee55, %rdi
nop
nop
nop
nop
xor $16427, %rax
movb (%rdi), %cl
cmp $64477, %rax
lea addresses_A_ht+0xa7bd, %rsi
lea addresses_WT_ht+0x7958, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $69, %rcx
rep movsb
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x87dd, %rsi
nop
nop
dec %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
sub $40717, %rcx
lea addresses_D_ht+0xa8a1, %rax
nop
nop
nop
nop
nop
inc %r15
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rdx
push %rsi

// Store
lea addresses_D+0x1f7dd, %rax
nop
lfence
movw $0x5152, (%rax)
nop
nop
nop
add %r13, %r13

// Faulty Load
mov $0x6f4bb40000000ddd, %r15
clflush (%r15)
nop
nop
nop
nop
nop
xor $42580, %r13
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'00': 96}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
