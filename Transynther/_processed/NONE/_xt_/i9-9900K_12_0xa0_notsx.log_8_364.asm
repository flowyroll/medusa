.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1ea3c, %rbx
nop
nop
nop
sub %r11, %r11
movb $0x61, (%rbx)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x4488, %rsi
lea addresses_normal_ht+0x7ea8, %rdi
nop
nop
and %rbp, %rbp
mov $71, %rcx
rep movsq
nop
sub $15318, %r9
lea addresses_UC_ht+0x1ecc8, %rsi
cmp $34204, %r11
mov (%rsi), %r9
dec %rbx
lea addresses_WC_ht+0x1c88, %r11
nop
nop
nop
dec %rdi
movups (%r11), %xmm7
vpextrq $0, %xmm7, %rsi
xor %rcx, %rcx
lea addresses_A_ht+0x15faa, %rcx
clflush (%rcx)
and %rbp, %rbp
mov (%rcx), %r11w
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x152e8, %rsi
nop
nop
nop
nop
cmp $49705, %rcx
movb (%rsi), %r9b
nop
xor $55824, %rcx
lea addresses_D_ht+0x16ae, %rsi
nop
nop
nop
nop
nop
add $59576, %r9
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
add $5333, %rdi
lea addresses_A_ht+0x2ce8, %rdi
nop
sub $21243, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xbc88, %rsi
lea addresses_WT_ht+0x1e88, %rdi
inc %r9
mov $86, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1bf08, %rbx
nop
nop
and $51218, %rbp
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
nop
nop
nop
nop
and $24061, %rcx
lea addresses_WC_ht+0x1de88, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x2488, %r10
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%r10)
nop
nop
dec %r10

// REPMOV
lea addresses_PSE+0x6848, %rsi
lea addresses_UC+0xfd08, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $25, %rcx
rep movsl
nop
nop
nop
nop
sub $39195, %r14

// Store
lea addresses_UC+0x6b8c, %rsi
nop
nop
nop
sub %r10, %r10
movb $0x51, (%rsi)
and %rdi, %rdi

// Store
lea addresses_UC+0x1f348, %rbp
sub $62062, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movntdq %xmm5, (%rbp)
add $2118, %r10

// Faulty Load
lea addresses_PSE+0x2488, %r14
clflush (%r14)
nop
xor $11222, %rcx
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}}
{'33': 8}
33 33 33 33 33 33 33 33
*/
