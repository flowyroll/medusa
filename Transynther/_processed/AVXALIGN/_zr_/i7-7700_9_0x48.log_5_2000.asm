.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xfff, %rcx
sub $20661, %r13
mov (%rcx), %eax
nop
nop
nop
add $33962, %r14
lea addresses_UC_ht+0xf45f, %r13
nop
nop
nop
add $19448, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm0
and $0xffffffffffffffc0, %r13
vmovaps %ymm0, (%r13)
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x3153, %rsi
lea addresses_D_ht+0x1405f, %rdi
nop
nop
nop
mfence
mov $81, %rcx
rep movsw
nop
sub $3074, %r10
lea addresses_normal_ht+0x1d5c7, %r12
nop
and $22206, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x105f, %r13
nop
nop
add %rax, %rax
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm4
vpextrq $1, %xmm4, %rcx
nop
cmp $5063, %r13
lea addresses_normal_ht+0x107df, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
dec %r14
lea addresses_D_ht+0xc407, %rsi
lea addresses_A_ht+0x1a697, %rdi
add %r13, %r13
mov $61, %rcx
rep movsw
xor $44670, %rax
lea addresses_normal_ht+0x17fd3, %r12
nop
nop
xor $29834, %r10
mov $0x6162636465666768, %r13
movq %r13, (%r12)
add $46123, %r10
lea addresses_WT_ht+0x47e3, %rsi
lea addresses_normal_ht+0x13c5f, %rdi
and $60980, %r14
mov $55, %rcx
rep movsq
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x645f, %r10
nop
nop
nop
inc %r12
movb $0x61, (%r10)
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x17bdf, %rsi
lea addresses_D+0x7e5f, %rdi
nop
and $41709, %r11
mov $21, %rcx
rep movsb
cmp $46309, %rdi

// Store
lea addresses_PSE+0x16ba3, %rcx
nop
nop
nop
nop
nop
sub $36994, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_WT+0xe45f, %r11
nop
nop
nop
nop
xor $25471, %rcx
movb (%r11), %r9b
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'00': 5}
00 00 00 00 00
*/
