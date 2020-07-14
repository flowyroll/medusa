.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x953, %rsi
lea addresses_WT_ht+0x177cb, %rdi
nop
nop
and $10742, %rbx
mov $26, %rcx
rep movsl
and $65495, %rbx
lea addresses_UC_ht+0x1b1cb, %r14
nop
nop
nop
nop
nop
add $3158, %rax
mov $0x6162636465666768, %r10
movq %r10, (%r14)
nop
nop
cmp $32651, %rbx
lea addresses_D_ht+0x1b963, %rcx
nop
nop
nop
nop
nop
lfence
movb $0x61, (%rcx)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x126eb, %rsi
lea addresses_UC_ht+0x1d68b, %rdi
clflush (%rdi)
nop
nop
dec %r9
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
and $53069, %r10
lea addresses_WT_ht+0x113cb, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%rdi), %r14
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x1a6cb, %rbx
nop
nop
nop
inc %r10
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
add $11671, %rsi
lea addresses_D_ht+0x1501b, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $27036, %r9
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
cmp $51953, %rcx
lea addresses_WC_ht+0x6ccb, %r14
nop
xor $60446, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x366b, %rsi
lea addresses_UC_ht+0xb51b, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $122, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_WT_ht+0x1ac5, %r14
nop
and $59619, %rcx
mov (%r14), %edi
nop
sub %rax, %rax
lea addresses_WT_ht+0x1e4ef, %rcx
clflush (%rcx)
nop
nop
nop
add $3209, %r14
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
dec %rdi
lea addresses_UC_ht+0x1acbb, %rcx
nop
sub %rbx, %rbx
movb $0x61, (%rcx)
nop
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rdi

// Store
lea addresses_UC+0x4921, %r15
and $10896, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
cmp $21449, %r13

// Store
mov $0x1f4f7a00000007cb, %rbx
nop
dec %r9
movl $0x51525354, (%rbx)
nop
nop
xor $21754, %r15

// Load
mov $0x7cb, %r15
nop
nop
xor %r11, %r11
movups (%r15), %xmm3
vpextrq $0, %xmm3, %rdi
nop
xor %r15, %r15

// Faulty Load
mov $0x1f4f7a00000007cb, %r11
cmp %r9, %r9
mov (%r11), %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'6d': 423, '00': 920, '54': 20486}
00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 6d 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 00 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 6d 6d 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 6d 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 6d 6d 54 54 54 54 54 54 6d 54 00 6d 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 6d 54 54 54 54 00 54 00 54 54 54 54 54 54 54 00 54 54 54 6d 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 6d 54 6d 54 54 54 6d 6d 54 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 6d 54 54 54 00 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 6d 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 6d 00 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
