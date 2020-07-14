.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x114d9, %rsi
lea addresses_UC_ht+0x26d9, %rdi
clflush (%rdi)
xor $17377, %r9
mov $47, %rcx
rep movsb
nop
nop
inc %r14
lea addresses_D_ht+0x23d9, %rsi
lea addresses_A_ht+0x1c495, %rdi
sub $47120, %rax
mov $6, %rcx
rep movsb
sub $386, %rsi
lea addresses_UC_ht+0x194b9, %rsi
lea addresses_A_ht+0xe6ef, %rdi
clflush (%rsi)
nop
nop
nop
inc %rdx
mov $78, %rcx
rep movsq
nop
nop
nop
and $21538, %rdi
lea addresses_WT_ht+0x1b6f9, %r9
nop
and $43044, %rax
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
add $42118, %rdi
lea addresses_normal_ht+0xe433, %rax
clflush (%rax)
cmp %rdx, %rdx
mov (%rax), %r14d
nop
nop
nop
nop
add $31220, %r9
lea addresses_D_ht+0x1319, %rdx
nop
xor %r9, %r9
movb (%rdx), %al
nop
nop
nop
nop
nop
add $53653, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rax
push %rdi

// Store
mov $0x26696200000003d9, %r11
nop
nop
dec %r14
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
add $11515, %rax

// Faulty Load
mov $0x26696200000003d9, %r12
nop
nop
nop
nop
xor %r10, %r10
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'f3': 3, 'f2': 2, 'e4': 1, 'f4': 1, 'e9': 1, 'd3': 1, '60': 104, 'fb': 1, 'f1': 3, 'd1': 2, '03': 1, '49': 65, 'ad': 1, '71': 1, '92': 1, 'db': 1, 'd2': 1, '7f': 1, 'aa': 1, 'e1': 1, '51': 1, '11': 1, 'd6': 3, '0f': 1, 'b1': 1, '00': 2334}
60 49 00 49 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 60 00 00 60 00 00 00 00 00 60 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 f1 00 00 e4 00 00 00 00 60 00 00 00 00 00 00 db 00 00 60 00 00 00 00 00 00 00 d2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 60 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 60 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 60 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 60 00 00 60 00 00 00 00 00 60 00 00 00 00 00 00 00 00 49 fb 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 60 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 60 00 00 00 00 00 60 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 49 00 d6 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 aa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 60 00 00 60 00 00 00 00 00 60 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 60 00 00 60 00 49 00 00 00 00 00 00 00 00 00 00 00 00 92 00 00 00
*/
