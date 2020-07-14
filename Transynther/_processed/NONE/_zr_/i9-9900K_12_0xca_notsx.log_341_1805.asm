.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14fed, %rsi
lea addresses_WC_ht+0x67ed, %rdi
nop
nop
nop
and %rbx, %rbx
mov $45, %rcx
rep movsb
nop
and %r14, %r14
lea addresses_WT_ht+0x1a7ed, %rdi
and $10697, %rsi
mov (%rdi), %bx
nop
nop
nop
sub $62577, %rsi
lea addresses_WT_ht+0x1e3ed, %rbp
nop
nop
nop
nop
nop
sub %r10, %r10
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0xd8e9, %r14
nop
nop
nop
nop
nop
and $7290, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r14)
nop
xor %r14, %r14
lea addresses_normal_ht+0x1541d, %rsi
lea addresses_WT_ht+0xc693, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $122, %rcx
rep movsw
cmp $42645, %rsi
lea addresses_WT_ht+0xdded, %rsi
lea addresses_A_ht+0x12d05, %rdi
nop
nop
cmp %r10, %r10
mov $36, %rcx
rep movsb
dec %r11
lea addresses_UC_ht+0x1472d, %rdi
clflush (%rdi)
nop
nop
add %rbx, %rbx
movl $0x61626364, (%rdi)
nop
and %rcx, %rcx
lea addresses_WC_ht+0x19c8d, %rsi
lea addresses_WC_ht+0x143ed, %rdi
nop
nop
nop
nop
nop
sub $41132, %r11
mov $70, %rcx
rep movsw
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x19dad, %rbx
clflush (%rbx)
cmp $22002, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
nop
xor $63103, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Load
lea addresses_US+0x15a2d, %r12
sub $93, %rsi
mov (%r12), %edx
nop
nop
nop
nop
inc %r9

// Store
lea addresses_normal+0x144ed, %r11
nop
nop
and $27281, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_A+0x177ed, %rdx
nop
nop
nop
nop
xor $41889, %rax
mov (%rdx), %r11d
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'00': 341}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
