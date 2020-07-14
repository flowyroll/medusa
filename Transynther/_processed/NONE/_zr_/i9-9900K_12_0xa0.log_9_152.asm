.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xbb38, %rsi
lea addresses_WC_ht+0xb238, %rdi
nop
nop
nop
nop
nop
sub $54546, %rbp
mov $0, %rcx
rep movsb
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0xa798, %rdx
nop
and %rcx, %rcx
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_UC+0xcf38, %rax
nop
nop
nop
nop
add $39193, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
sub $39569, %r10

// Store
lea addresses_D+0x44f8, %rsi
nop
nop
nop
nop
nop
xor $34051, %r10
movb $0x51, (%rsi)
nop
sub $33389, %r10

// Store
lea addresses_UC+0xcf38, %r12
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0xf338, %rax
nop
dec %r11
movb $0x51, (%rax)
nop
add %rsi, %rsi

// Faulty Load
lea addresses_UC+0xcf38, %r12
clflush (%r12)
nop
nop
nop
sub %r10, %r10
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
