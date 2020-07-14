.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
lea addresses_A_ht+0x4fa1, %rdx
nop
nop
nop
cmp $59833, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
nop
add $46300, %rcx
lea addresses_WT_ht+0x7419, %r13
nop
sub %r8, %r8
movl $0x61626364, (%r13)
nop
nop
nop
nop
inc %r8
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_US+0xd281, %r12
nop
and %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovntdq %ymm6, (%r12)
and %r14, %r14

// Load
lea addresses_normal+0x161a9, %r11
nop
sub $2923, %rbp
mov (%r11), %r14w
nop
cmp %rax, %rax

// Faulty Load
lea addresses_UC+0xf281, %rax
nop
nop
cmp %rcx, %rcx
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'00': 1}
00
*/
