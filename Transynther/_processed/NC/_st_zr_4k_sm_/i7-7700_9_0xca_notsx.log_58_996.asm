.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x127d2, %r8
and %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x183d2, %rsi
lea addresses_normal_ht+0x39ca, %rdi
add $20849, %r15
mov $90, %rcx
rep movsb
nop
nop
xor $2724, %r15
lea addresses_D_ht+0x1aed2, %rdi
nop
and $4156, %r14
mov (%rdi), %ecx
nop
sub $55649, %r14
lea addresses_D_ht+0xc112, %rsi
lea addresses_normal_ht+0xbd2, %rdi
nop
nop
xor $44598, %r11
mov $41, %rcx
rep movsb
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1bd52, %rsi
lea addresses_normal_ht+0x1b1d2, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $38, %rcx
rep movsq
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0xb4b2, %rsi
lea addresses_normal_ht+0xab6a, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
mfence
lea addresses_A_ht+0xaa9a, %r14
nop
nop
nop
and %rsi, %rsi
mov (%r14), %di
dec %rdi
lea addresses_D_ht+0x97d2, %rsi
nop
and $51017, %r12
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
nop
nop
sub $65278, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi

// Load
lea addresses_PSE+0x1d2, %rcx
nop
nop
cmp $42454, %rdi
mov (%rcx), %bp
sub $35005, %rdi

// Store
lea addresses_WT+0x1ec52, %r11
nop
nop
nop
sub $25419, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovaps %ymm2, (%r11)
nop
nop
nop
nop
and $48181, %rcx

// Store
lea addresses_WT+0x1572, %rcx
dec %r13
movb $0x51, (%rcx)
nop
nop
nop
cmp %r11, %r11

// Store
mov $0x4bad190000000bd2, %r10
nop
inc %r11
movb $0x51, (%r10)
and %rbp, %rbp

// Store
lea addresses_US+0x133d2, %rcx
nop
nop
and %rbp, %rbp
movw $0x5152, (%rcx)
nop
nop
dec %r10

// Store
lea addresses_WC+0x5a66, %r8
nop
nop
nop
cmp $58633, %r13
movw $0x5152, (%r8)
nop
nop
nop
nop
sub %r8, %r8

// Faulty Load
mov $0x4bad190000000bd2, %rcx
nop
nop
and %r8, %r8
mov (%rcx), %r13d
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 1, '51': 57}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
