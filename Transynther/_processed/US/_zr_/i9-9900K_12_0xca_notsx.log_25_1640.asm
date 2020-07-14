.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1bd30, %rsi
lea addresses_D_ht+0x49a7, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r9, %r9
mov $108, %rcx
rep movsq
nop
nop
nop
nop
add $32394, %r10
lea addresses_A_ht+0x17bf8, %rcx
nop
nop
nop
nop
nop
sub $39204, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
cmp $47202, %rbx
lea addresses_WT_ht+0xa388, %r9
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x15478, %rsi
lea addresses_A_ht+0xa388, %rdi
nop
nop
nop
nop
add $8909, %rdx
mov $34, %rcx
rep movsl
nop
add $45423, %r10
lea addresses_normal_ht+0xe208, %rsi
inc %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%rsi)
nop
and $60456, %rdx
lea addresses_A_ht+0x10b88, %r9
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r9)
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_UC+0xe88, %r12
nop
nop
nop
nop
nop
dec %r9
movb $0x51, (%r12)
and %r8, %r8

// Store
mov $0x18c22c0000000088, %rax
nop
nop
nop
xor $63932, %r11
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
xor $36117, %r15

// Load
lea addresses_US+0x1d788, %r12
nop
nop
nop
nop
xor $38669, %rsi
movaps (%r12), %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_US+0x1d788, %r15
nop
and %rsi, %rsi
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'00': 25}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
