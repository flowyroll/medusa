.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c86a, %r10
nop
and %rbx, %rbx
mov (%r10), %di
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1248a, %r10
nop
xor %r8, %r8
movb $0x61, (%r10)
inc %r10
lea addresses_UC_ht+0x1b5ea, %rsi
lea addresses_WC_ht+0xdeea, %rdi
nop
nop
nop
add %r11, %r11
mov $11, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0xefea, %r11
nop
nop
add $35150, %rsi
movl $0x61626364, (%r11)
nop
nop
nop
nop
add $29724, %rbx
lea addresses_WT_ht+0x3fb2, %r8
nop
nop
nop
nop
nop
sub $34557, %r11
mov (%r8), %si
nop
nop
nop
nop
sub $56788, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdx

// Store
lea addresses_WC+0xddea, %r10
nop
nop
nop
nop
nop
xor %r11, %r11
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_A+0x2dea, %rcx
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
xor $59754, %r12

// Store
lea addresses_RW+0x1df22, %r15
nop
nop
nop
add $11702, %r10
movb $0x51, (%r15)
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_A+0xf5ea, %r13
nop
nop
and %r10, %r10
mov (%r13), %r11w
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdx
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'00': 310}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
