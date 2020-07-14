.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x22ac, %rsi
lea addresses_WC_ht+0x11b33, %rdi
sub $23442, %r15
mov $65, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xc9ec, %rdi
nop
nop
nop
nop
and $36946, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
inc %r15
lea addresses_D_ht+0x8b6c, %rcx
nop
nop
nop
add $48156, %rax
mov (%rcx), %si
nop
and $35034, %rcx
lea addresses_WC_ht+0x1d36c, %rsi
lea addresses_D_ht+0x50f4, %rdi
nop
nop
dec %r11
mov $34, %rcx
rep movsq
nop
nop
nop
xor $8883, %r11
lea addresses_UC_ht+0x336c, %rsi
lea addresses_WC_ht+0x1c57b, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $81, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xab6c, %rcx
nop
nop
dec %rax
mov (%rcx), %dx
nop
sub $22609, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_A+0x18982, %rdx
nop
nop
nop
xor $32465, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
sub %rdx, %rdx

// Store
mov $0xf6c, %r14
nop
xor $58326, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r14)

// Exception!!!
nop
mov (0), %rbx
nop
nop
nop
nop
nop
and %rdx, %rdx

// Store
mov $0xb6c, %r13
nop
nop
nop
nop
nop
and %r12, %r12
movw $0x5152, (%r13)
xor $3833, %rax

// Faulty Load
mov $0x39c42c000000036c, %rax
nop
nop
nop
cmp $36413, %rdx
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'60': 10814, '48': 271, '36': 1, 'a4': 1, '6a': 1, '02': 10673, '8b': 1, '00': 65, '44': 1, '06': 1}
06 02 60 02 02 02 60 02 02 02 60 02 60 60 60 02 60 02 60 60 02 60 60 60 60 02 02 02 60 02 60 60 60 02 02 60 60 60 02 02 02 02 02 02 60 60 60 02 60 60 02 60 02 60 02 48 02 60 02 60 02 60 02 60 60 02 60 02 60 60 60 60 60 02 60 02 60 60 60 02 02 02 60 60 60 60 60 60 60 02 60 60 60 60 60 60 60 60 02 02 02 02 60 02 60 02 60 60 02 02 02 02 60 60 02 60 60 02 02 02 02 02 02 02 02 60 02 02 02 02 02 02 02 60 02 60 02 60 60 60 60 60 60 02 60 60 02 02 60 02 60 02 60 60 02 02 60 60 02 02 02 02 60 60 60 02 02 02 60 02 60 60 60 02 60 02 02 60 02 60 60 60 60 60 02 02 02 60 02 60 60 60 02 02 02 02 60 60 60 60 60 60 60 60 60 60 02 60 02 60 60 60 60 60 02 02 02 02 02 60 60 02 60 02 60 60 02 60 02 02 60 60 60 02 60 60 60 60 60 60 60 60 02 02 02 60 60 02 02 02 60 02 60 60 02 02 02 02 60 02 60 60 60 02 60 60 02 02 60 60 60 60 02 60 60 02 60 02 02 02 60 60 60 60 60 60 02 02 02 02 60 60 60 60 60 60 60 48 02 60 60 02 02 02 02 02 60 60 60 60 02 02 02 02 60 60 60 02 02 02 02 60 02 02 02 02 02 60 60 02 60 02 60 02 60 60 60 02 02 60 02 60 02 60 60 02 60 02 60 02 60 02 60 02 02 02 02 02 02 02 02 02 02 60 02 60 02 60 60 02 02 60 02 60 02 60 60 02 60 60 60 60 02 60 60 02 60 60 02 02 02 02 02 60 60 02 02 60 02 60 60 02 02 02 02 60 60 60 60 02 02 02 60 60 02 60 02 60 02 02 60 02 02 02 02 02 60 60 60 60 60 60 02 02 02 02 60 60 02 60 02 60 02 60 02 60 60 60 60 02 60 02 60 02 60 02 60 60 60 60 60 60 60 02 60 60 60 02 02 02 60 02 02 02 02 60 02 60 02 02 60 02 60 60 60 02 60 02 02 60 60 60 60 60 60 60 02 60 02 02 60 60 60 02 02 60 60 02 02 02 60 60 60 02 02 60 02 60 60 02 02 02 02 60 60 60 60 60 02 60 02 02 60 02 02 02 02 60 60 60 02 02 60 60 02 60 60 60 02 02 02 02 02 02 02 02 02 60 60 60 60 60 02 60 60 60 60 60 02 02 60 02 60 02 60 02 60 60 02 60 02 02 02 02 02 60 60 02 60 02 02 60 02 60 60 02 02 02 02 60 60 02 02 60 02 60 60 60 02 60 60 02 60 02 02 02 60 02 60 02 60 60 60 02 02 60 02 02 02 60 60 60 60 02 02 02 02 02 60 60 60 02 60 60 60 60 60 60 02 02 02 60 60 60 60 60 02 60 60 60 60 60 60 02 60 02 02 02 60 60 02 60 60 02 02 02 60 60 02 02 02 02 02 02 02 60 02 60 02 02 60 60 60 02 02 60 60 60 60 60 60 60 02 60 60 60 60 60 02 02 60 60 60 60 02 02 60 60 02 60 60 60 60 60 60 60 60 60 60 60 60 02 02 02 60 02 02 60 02 02 02 60 60 60 60 02 60 60 60 02 02 60 02 02 60 60 02 60 60 60 02 60 60 02 60 60 60 60 02 02 60 02 60 60 02 02 02 02 02 02 60 60 02 60 60 60 60 60 60 60 60 02 60 02 60 02 02 02 02 60 02 02 02 02 02 02 60 60 02 02 02 02 60 60 02 60 60 60 60 60 60 60 60 60 02 60 60 02 60 60 02 02 02 60 60 60 02 60 02 02 02 02 60 60 02 60 60 60 02 02 02 02 02 02 02 60 60 60 02 02 60 60 60 60 02 02 02 02 60 60 60 60 02 60 60 02 02 02 60 60 02 60 60 02 02 02 02 02 60 60 02 02 02 02 60 60 02 02 02 02 02 60 60 60 60 02 02 02 02 02 02 02 60 60 60 02 02 02 60 02 60 02 02 02 60 02 60 60 60 60 02 60 60 60 02 60 60 60 60 60 60 02 02 02 02 60 02 60 02 02 60 60 02 60 02 02 60 60 02 60 02 02 02 02 02 02 60 60 60 60 02 02 60 60 60 60 60 60 60 02 60 02 60 60 02 02 60 60 02 60 02 02 60 60 02 02 60 02 02 02
*/
