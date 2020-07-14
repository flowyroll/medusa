.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xbd0c, %rdi
nop
nop
nop
xor $30130, %r14
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x268c, %r11
nop
nop
nop
nop
nop
add $12009, %rax
mov (%r11), %r9d
nop
nop
dec %r11
lea addresses_A_ht+0xc268, %rsi
lea addresses_UC_ht+0x490c, %rdi
nop
nop
nop
xor $7293, %r14
mov $126, %rcx
rep movsw
nop
nop
nop
sub $23335, %r11
lea addresses_WT_ht+0x1eccc, %rsi
lea addresses_A_ht+0x61d8, %rdi
xor $62087, %rbp
mov $42, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x670c, %rsi
lea addresses_D_ht+0x1770c, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $40, %rcx
rep movsl
nop
add %rdi, %rdi
lea addresses_A_ht+0x1810c, %rdi
and $5284, %rsi
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
nop
nop
add $25663, %r9
lea addresses_D_ht+0x175c, %rdi
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_normal+0x1ef0c, %rdx
nop
sub $257, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rdx)
inc %r13

// Store
lea addresses_normal+0x1090c, %r9
inc %r12
movw $0x5152, (%r9)
nop
nop
and $15637, %r13

// Store
lea addresses_RW+0x1c58c, %r13
add %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r13)
nop
nop
dec %rdx

// Store
lea addresses_WT+0xab8c, %r13
nop
nop
and $49865, %r12
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
add $47180, %rdx

// Faulty Load
mov $0x507d2000000090c, %rbp
and %r10, %r10
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'45': 5751, '6c': 1, '00': 16059, '49': 16, 'ff': 2}
00 6c 00 00 45 45 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 45 00 45 00 45 45 00 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 45 45 45 45 00 45 00 00 00 45 00 00 00 00 00 00 45 45 45 45 00 45 45 45 00 00 00 00 00 00 45 45 00 00 00 45 45 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 45 00 45 00 45 00 45 00 00 00 45 45 00 00 00 00 00 45 45 00 45 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 45 45 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 45 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 00 45 00 45 00 45 00 45 00 00 00 00 00 45 00 45 45 45 00 00 45 00 49 00 00 45 00 45 45 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 45 00 45 00 45 00 00 00 00 00 45 00 00 00 00 45 45 45 00 00 00 00 00 45 45 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 45 00 45 00 00 00 45 00 00 45 00 45 00 00 45 45 45 00 00 00 45 45 00 00 00 00 00 00 00 45 45 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 45 00 00 45 00 00 00 45 45 00 00 00 00 45 45 00 00 45 00 45 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 45 00 00 45 45 45 00 45 00 00 00 00 45 00 00 45 00 00 00 45 45 00 45 00 45 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 45 45 00 45 00 00 00 00 45 00 00 45 00 45 45 00 00 00 45 00 00 00 00 45 00 45 45 45 00 00 45 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 45 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
