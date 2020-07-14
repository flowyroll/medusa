.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb4b0, %r12
nop
nop
add $34972, %r9
movups (%r12), %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
inc %r10
lea addresses_D_ht+0x88b0, %rdx
nop
nop
dec %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
cmp $15930, %rax
lea addresses_WC_ht+0xed3c, %r9
nop
nop
nop
and %r10, %r10
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
add $39955, %r9
lea addresses_WC_ht+0xc4b0, %rsi
lea addresses_A_ht+0x174b0, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $96, %rcx
rep movsb
nop
nop
nop
nop
add $51245, %rcx
lea addresses_WC_ht+0xeab0, %rsi
lea addresses_A_ht+0xc0b0, %rdi
nop
nop
cmp %r9, %r9
mov $22, %rcx
rep movsq
and $40845, %rdi
lea addresses_A_ht+0x13c70, %rdx
nop
nop
nop
dec %r12
movl $0x61626364, (%rdx)
nop
nop
nop
sub $62308, %rdx
lea addresses_WT_ht+0x64b0, %r9
nop
nop
nop
nop
nop
add $43920, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
cmp $57340, %rax
lea addresses_A_ht+0xe820, %r12
nop
sub %rdi, %rdi
mov (%r12), %r9
nop
nop
nop
nop
nop
cmp $46424, %rax
lea addresses_D_ht+0xdb0, %r11
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r11)
nop
nop
add $43711, %rax
lea addresses_WC_ht+0xb930, %rsi
lea addresses_D_ht+0x73b0, %rdi
nop
nop
nop
nop
xor $30457, %r10
mov $63, %rcx
rep movsb
nop
add %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rdx

// Load
lea addresses_RW+0xbfd0, %r15
xor %r10, %r10
movups (%r15), %xmm4
vpextrq $1, %xmm4, %r9

// Exception!!!
mov (0), %r11
and $7902, %r10

// Store
lea addresses_normal+0x9cb0, %r15
nop
nop
nop
sub %r8, %r8
movb $0x51, (%r15)
nop
nop
nop
add $55715, %r15

// Store
lea addresses_RW+0x199b0, %rdx
nop
and $36174, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rdx)

// Exception!!!
mov (0), %r9
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0x54c7, %r8
nop
nop
nop
nop
nop
add %rax, %rax
movb $0x51, (%r8)
nop
sub %rax, %rax

// Store
lea addresses_normal+0xd130, %rdx
nop
and %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rdx)
sub $19604, %r11

// Store
lea addresses_normal+0x10eb0, %rax
nop
nop
nop
add $33136, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rax)
nop
nop
sub $56532, %r10

// Faulty Load
lea addresses_normal+0x9cb0, %r9
nop
and $22468, %r15
movb (%r9), %dl
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
