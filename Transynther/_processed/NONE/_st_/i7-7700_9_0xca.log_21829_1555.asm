.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x17b41, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x36c1, %rbx
nop
nop
and $32452, %rcx
movb (%rbx), %r15b
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x70c1, %rsi
lea addresses_D_ht+0x38a1, %rdi
nop
nop
add %r12, %r12
mov $74, %rcx
rep movsb
nop
nop
inc %r11
lea addresses_D_ht+0x1d5f1, %rdi
nop
nop
nop
inc %rsi
mov (%rdi), %ecx
nop
nop
nop
nop
cmp $62126, %rdx
lea addresses_A_ht+0x1ebc1, %r12
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1e8c1, %rsi
lea addresses_UC_ht+0x41c1, %rdi
nop
xor %rdx, %rdx
mov $56, %rcx
rep movsl
nop
nop
nop
nop
cmp $58312, %r15
lea addresses_WC_ht+0xe4c1, %rdx
nop
nop
nop
add $39399, %rcx
mov (%rdx), %di
nop
nop
dec %r11
lea addresses_WC_ht+0x19cc1, %r15
nop
nop
nop
nop
nop
dec %r12
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x8d41, %rsi
cmp %rdi, %rdi
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
mfence
lea addresses_normal_ht+0x192b1, %rsi
lea addresses_UC_ht+0x16b39, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $11, %rcx
rep movsb
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x3499, %rsi
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x15c47, %rsi
lea addresses_D_ht+0x3cc1, %rdi
nop
add $1919, %rdx
mov $57, %rcx
rep movsl
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x13a7e, %rcx
inc %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
add $46899, %r15

// Store
lea addresses_RW+0x1ebc1, %r11
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movntdq %xmm2, (%r11)
nop
nop
and $41892, %rsi

// Load
lea addresses_RW+0x16ff9, %rcx
add %rsi, %rsi
mov (%rcx), %r9d
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_D+0x94c1, %r9
dec %rcx
movw $0x5152, (%r9)
nop
xor %rcx, %rcx

// Load
mov $0x5227190000000851, %rsi
nop
nop
nop
nop
nop
sub $24908, %r11
mov (%rsi), %rcx
add $26127, %rdi

// Faulty Load
lea addresses_UC+0x4c1, %r14
nop
nop
nop
nop
nop
add %r9, %r9
mov (%r14), %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_RW'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
