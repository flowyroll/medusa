.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xcc1a, %rsi
lea addresses_WC_ht+0x18d72, %rdi
clflush (%rdi)
nop
sub $14816, %r10
mov $67, %rcx
rep movsw
nop
sub $20289, %r11
lea addresses_normal_ht+0x827a, %rsi
lea addresses_WC_ht+0x1dc1a, %rdi
clflush (%rsi)
nop
nop
add $25198, %r14
mov $1, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $51012, %r10
lea addresses_WT_ht+0x14782, %r11
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%r11), %si
and %r11, %r11
lea addresses_WC_ht+0x1d01a, %rsi
lea addresses_normal_ht+0x6f2e, %rdi
cmp $56615, %rdx
mov $83, %rcx
rep movsq
nop
and %rdi, %rdi
lea addresses_D_ht+0x1501e, %rsi
lea addresses_normal_ht+0x621a, %rdi
nop
nop
nop
add $5743, %r14
mov $101, %rcx
rep movsb
nop
nop
nop
and $49930, %rsi
lea addresses_WT_ht+0x1061a, %r11
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r11), %esi
nop
nop
nop
add $3266, %rdx
lea addresses_D_ht+0x877a, %rax
nop
nop
nop
nop
nop
cmp %r14, %r14
mov (%rax), %rsi
nop
nop
nop
add $59013, %rax
lea addresses_WC_ht+0x405a, %r11
nop
nop
nop
nop
nop
add $57618, %rsi
mov (%r11), %r10w
nop
dec %rcx
lea addresses_D_ht+0x5c2, %rdx
nop
nop
nop
nop
cmp %r11, %r11
movw $0x6162, (%rdx)
sub %rsi, %rsi
lea addresses_UC_ht+0xf6fa, %rcx
nop
nop
nop
nop
add %r11, %r11
movw $0x6162, (%rcx)
nop
inc %rax
lea addresses_A_ht+0x143fa, %r11
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rax
movq %rax, %xmm0
and $0xffffffffffffffc0, %r11
movaps %xmm0, (%r11)
nop
nop
and $63532, %rdx
lea addresses_WC_ht+0xe95a, %rdx
nop
xor $8403, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xab62, %r14
nop
nop
cmp %rax, %rax
mov (%r14), %di
nop
dec %rax
lea addresses_D_ht+0x815a, %r11
nop
xor $39315, %rdx
mov (%r11), %cx
nop
nop
xor $30375, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_A+0x17066, %rax
and %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movntdq %xmm3, (%rax)
nop
nop
nop
nop
cmp $16684, %rsi

// Store
lea addresses_UC+0x1fc1a, %r9
nop
nop
and $8053, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_PSE+0x1201a, %r14
add %rsi, %rsi
mov (%r14), %bp
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_D+0x1e61a, %r10
add $51581, %r8
movw $0x5152, (%r10)
xor %rsi, %rsi

// Load
lea addresses_A+0x19f44, %r9
nop
nop
xor %r10, %r10
mov (%r9), %rax
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0xae1d, %rax
sub %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovntdq %ymm6, (%rax)
nop
cmp %r10, %r10

// Faulty Load
lea addresses_PSE+0x1201a, %rbp
nop
nop
inc %r8
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 47}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
