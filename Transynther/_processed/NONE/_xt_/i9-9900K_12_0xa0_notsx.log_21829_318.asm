.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ad72, %rsi
lea addresses_WT_ht+0x189de, %rdi
nop
cmp $54485, %r12
mov $87, %rcx
rep movsl
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x1a49f, %r9
nop
nop
nop
nop
nop
and $1396, %r10
movb $0x61, (%r9)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x155e, %r10
nop
nop
nop
nop
cmp $53103, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%r10)
sub $14084, %rdx
lea addresses_UC_ht+0x17afe, %r10
nop
nop
nop
nop
and $49812, %rsi
movb (%r10), %cl
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0xc45e, %rsi
lea addresses_A_ht+0x2f5e, %rdi
nop
nop
nop
sub %r10, %r10
mov $99, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_WC_ht+0x18c5e, %r12
nop
nop
nop
nop
sub %rsi, %rsi
movb (%r12), %cl
nop
nop
nop
nop
nop
add $53332, %r12
lea addresses_A_ht+0x1da5e, %rsi
nop
nop
nop
sub %rdx, %rdx
mov (%rsi), %r10w
nop
dec %rsi
lea addresses_WC_ht+0x5852, %rsi
lea addresses_WT_ht+0x3418, %rdi
nop
nop
and %r12, %r12
mov $114, %rcx
rep movsb
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Load
lea addresses_D+0x1da1e, %rdx
nop
nop
nop
nop
cmp $3916, %r15
mov (%rdx), %r10w
nop
nop
nop
add %rbp, %rbp

// Store
mov $0xc5e, %rdi
sub %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
add %rdx, %rdx

// Store
lea addresses_A+0x7b06, %r15
nop
nop
nop
add $45027, %r8
movl $0x51525354, (%r15)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x9f1e, %r10
add $6240, %rdi
movb $0x51, (%r10)
nop
nop
nop
nop
nop
sub $31845, %rdi

// Store
mov $0xb4550000000c5e, %r11
clflush (%r11)
nop
nop
nop
nop
nop
sub $7661, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_RW+0x1cf1e, %rdi
nop
dec %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_WC+0x1d682, %rdi
inc %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
and $16678, %rdx

// Store
mov $0x746aca000000042e, %r15
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_D+0x1d416, %r10
add $38202, %rdi
movw $0x5152, (%r10)
nop
nop
add $13127, %r15

// Faulty Load
lea addresses_normal+0x145e, %rbp
nop
nop
nop
xor $14026, %rdi
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
