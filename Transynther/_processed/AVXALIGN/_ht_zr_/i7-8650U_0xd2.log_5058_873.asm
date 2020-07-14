.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xa988, %r9
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm4
and $0xffffffffffffffc0, %r9
vmovaps %ymm4, (%r9)
nop
nop
inc %rbx
lea addresses_normal_ht+0x48, %rbx
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
cmp $57335, %r9
lea addresses_D_ht+0x1d768, %rsi
lea addresses_WT_ht+0x7d68, %rdi
nop
nop
xor %r11, %r11
mov $85, %rcx
rep movsl
add %r8, %r8
lea addresses_normal_ht+0x9d0, %rbx
nop
nop
nop
add $14454, %r8
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
sub $20728, %rsi
lea addresses_UC_ht+0x3968, %rsi
lea addresses_WC_ht+0x15c20, %rdi
nop
nop
and $43325, %r13
mov $12, %rcx
rep movsb
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rdi
push %rsi

// Faulty Load
lea addresses_WT+0x2d68, %rax
xor $42287, %rdi
vmovntdqa (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rsi
pop %rdi
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'44': 3815, '46': 1198, '00': 45}
44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 46 46 44 44 44 46 44 44 46 44 44 44 46 44 00 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 46 44 44 44 44 44 46 44 44 44 46 44 46 44 46 44 44 44 44 44 44 46 44 44 46 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 46 44 46 44 44 46 44 44 44 46 44 44 46 46 44 46 44 44 44 44 44 44 44 46 44 46 44 44 44 46 44 44 44 46 44 44 44 46 44 44 44 46 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 46 44 46 44 44 44 44 46 44 44 44 44 44 44 44 46 44 46 44 44 44 46 44 46 44 44 44 44 44 44 44 46 44 46 44 44 46 44 44 46 44 44 44 44 44 46 44 46 44 46 44 46 44 44 44 44 44 46 44 44 44 44 46 46 44 44 44 44 46 44 46 44 46 44 46 44 44 46 44 44 44 46 44 44 46 44 46 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 46 44 44 46 44 44 44 44 44 44 44 44 46 46 44 44 46 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 46 46 44 44 44 44 46 44 44 44 44 44 46 46 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 46 44 44 44 44 46 46 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 44 46 44 44 44 44 46 00 46 44 46 44 46 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 46 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 46 44 46 00 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 46 44 46 44 44 44 46 44 44 44 46 44 46 44 44 44 44 44 44 46 46 44 44 46 44 46 44 44 44 44 46 44 44 46 46 44 46 44 46 44 46 46 44 44 44 46 44 44 46 44 44 46 44 44 44 44 46 44 44 44 44 44 46 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 46 44 46 44 44 46 44 44 44 46 44 44 44 44 46 44 46 44 44 44 44 46 44 46 44 44 44 44 46 44 46 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 44 46 44 46 46 44 44 46 44 46 44 44 46 44 44 44 46 44 46 44 44 44 46 44 44 44 44 44 44 44 46 44 44 46 44 46 44 46 44 46 44 44 44 44 44 44 44 44 44 44 46 46 44 44 46 44 44 44 46 44 44 44 44 44 44 46 44 46 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 46 44 44 46 46 44 46 44 46 44 44 46 44 44 44 46 44 44 44 44 44 44 46 44 44 44 46 00 44 44 46 44 46 44 46 44 44 44 44 44 44 44 46 44 46 44 44 44 46 44 00 44 44 44 44 46 44 44 46 44 44 44 44 46 44 44 46 46 44 44 44 44 46 44 44 46 44 44 46 46 44 44 44 44 44 44 46 44 44 46 44 44 44 46 46 46 44 44 44 44 44 44 46 44 44 46 44 44 44 46 44 44 44 46 44 44 46 44 44 44 46 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 46 44 46 44 44 44 44 44 44 44 00 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 46 44 46 44 44 44 44 46 44 44 44 46 44 44 44 44 44 46 44 46 44 44 44 44 46 44 46 44 46 44 44 44 46 44
*/
