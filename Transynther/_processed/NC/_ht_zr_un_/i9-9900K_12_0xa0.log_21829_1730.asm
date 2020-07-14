.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1d667, %r11
clflush (%r11)
nop
nop
nop
nop
sub %r9, %r9
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
nop
lfence
lea addresses_D_ht+0xdf47, %rdi
nop
sub $42531, %r11
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add $19740, %rax
lea addresses_UC_ht+0x10ece, %rsi
lea addresses_normal_ht+0x9b43, %rdi
nop
xor $40032, %r14
mov $47, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0xb3c7, %rsi
lea addresses_WT_ht+0x14d87, %rdi
add $39123, %r10
mov $74, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0xb353, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $53532, %r14
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
sub %rcx, %rcx
lea addresses_A_ht+0xb687, %rcx
add $37304, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0xbb3b, %rcx
nop
nop
nop
add %r11, %r11
mov (%rcx), %r10d
sub %rsi, %rsi
lea addresses_D_ht+0x18ac7, %rsi
lea addresses_D_ht+0x6847, %rdi
nop
add $16489, %r10
mov $35, %rcx
rep movsb
nop
nop
nop
add $42586, %r14
lea addresses_WC_ht+0xe00b, %rsi
lea addresses_A_ht+0x1c1cf, %rdi
nop
and $3422, %rax
mov $8, %rcx
rep movsb
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0xa747, %rsi
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%rsi), %r9d
nop
nop
nop
nop
cmp $38981, %rax
lea addresses_D_ht+0x1d947, %rdi
nop
nop
nop
cmp %rcx, %rcx
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
nop
sub $15042, %r11
lea addresses_WT_ht+0x15247, %rsi
nop
xor %rcx, %rcx
movl $0x61626364, (%rsi)
nop
mfence
lea addresses_D_ht+0x14177, %r10
nop
nop
nop
nop
nop
xor $11638, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %r10
movntdq %xmm4, (%r10)
nop
nop
nop
nop
cmp $60659, %r11
lea addresses_WC_ht+0xcfe4, %r11
add %r10, %r10
mov (%r11), %di
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1aee7, %rax
clflush (%rax)
add $31120, %r9
movl $0x61626364, (%rax)
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Load
lea addresses_PSE+0x9057, %r12
nop
nop
nop
nop
nop
sub %r15, %r15
movb (%r12), %dl
nop
nop
nop
add %rbx, %rbx

// Store
mov $0x9ea8a0000000f47, %r12
clflush (%r12)
xor %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
sub $8868, %rbp

// Store
lea addresses_WT+0x5747, %r15
add %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0xaac7, %r9
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r9)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_UC+0x1c19f, %r15
nop
nop
nop
nop
nop
xor $35588, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movaps %xmm7, (%r15)
nop
xor %r9, %r9

// Faulty Load
mov $0x9ea8a0000000f47, %r15
nop
nop
nop
xor %rdx, %rdx
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': True, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'08': 63, '48': 2308, '49': 4651, 'e7': 89, 'ff': 1, '00': 11753, '46': 2788, '42': 1, '6c': 138, '72': 37}
00 00 6c 6c 6c 6c 6c 6c 00 00 6c 6c 00 49 49 6c 00 00 00 6c 6c 00 00 00 6c 6c 00 6c 6c 6c 00 6c 6c 49 6c 6c 6c 6c 00 00 6c 6c 49 6c 6c 6c 6c 6c 00 6c 00 6c 6c 6c 49 6c 49 6c 6c 00 6c 6c 6c 49 6c 6c 00 00 00 6c 00 00 00 6c 00 00 49 6c 49 6c 49 49 00 6c 6c 49 6c 6c 00 49 00 6c 6c 6c 6c 6c 6c 00 6c 00 6c 6c 00 6c 6c 6c 6c 6c 49 6c 48 6c 00 00 6c 6c 49 00 49 49 00 00 6c 6c 6c 00 00 6c 6c 49 6c 6c 6c 6c 6c 00 00 00 6c 6c 6c 6c 6c 00 6c 00 6c 49 00 6c 6c 00 00 6c 6c 49 6c 49 49 00 6c 6c 6c 00 6c 00 49 6c 6c 00 00 6c 6c 6c 6c 6c 00 6c 6c 49 49 6c 49 6c 49 6c 00 49 49 6c 00 00 00 49 6c 49 6c 6c 00 49 00 00 6c 6c 6c 49 49 00 6c 49 49 6c 49 00 6c 6c 6c 00 00 49 49 00 6c 49 6c 6c 00 6c 6c 00 00 6c 00 6c 00 6c 49 6c 00 6c 00 00 6c 00 6c 6c 00 00 6c 00 6c 6c 00 6c 6c 6c 6c 00 6c 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 46 46 00 46 49 46 46 00 00 49 00 49 00 46 49 46 46 49 46 46 00 00 00 00 49 49 46 49 00 00 46 00 46 46 46 49 46 46 46 00 46 00 46 46 46 46 00 46 46 00 49 46 00 00 00 46 46 00 46 49 46 46 00 46 00 49 00 46 00 46 46 46 46 46 00 46 46 00 46 46 49 46 00 46 46 46 00 00 46 46 00 46 00 46 46 46 46 00 46 00 49 46 00 49 46 00 49 46 00 46 00 46 46 46 46 46 46 49 00 00 00 46 46 46 46 00 00 49 00 46 49 46 00 00 00 00 00 49 00 00 00 49 49 00 00 00 46 46 00 46 46 46 00 46 46 49 00 00 46 46 00 46 49 49 46 46 49 46 00 00 00 46 00 46 46 00 00 00 46 00 49 46 00 00 00 49 46 00 00 46 00 00 00 46 00 46 00 49 00 49 00 46 49 00 46 46 46 46 46 46 46 49 00 49 46 49 46 46 46 46 46 00 49 00 49 00 46 46 00 46 00 49 46 00 49 46 46 46 46 46 00 46 46 49 46 49 46 00 46 46 49 00 46 49 00 46 46 00 46 00 49 46 00 46 00 49 46 00 46 46 46 46 00 46 46 46 46 49 46 46 00 49 00 49 00 46 46 00 46 00 46 46 00 46 46 49 00 46 46 00 49 46 46 46 46 46 00 00 46 49 46 46 00 00 00 46 00 49 49 46 00 00 00 46 46 00 46 00 00 46 00 00 00 00 46 46 49 46 46 00 49 46 00 00 00 46 46 00 00 00 46 46 46 46 46 49 46 00 49 46 46 00 49 46 46 00 00 00 46 00 46 46 46 46 46 46 49 46 46 49 00 46 46 46 49 00 46 00 00 46 46 46 00 00 00 00 49 46 00 00 46 00 49 46 00 00 00 46 46 46 46 46 49 46 46 49 00 00 46 00 46 46 46 00 46 00 46 00 00 00 46 00 46 49 00 00 46 46 49 46 46 00 00 46 46 46 00 00 49 46 00 46 00 46 46 46 46 46 46 46 49 49 46 46 00 46 46 00 00 49 46 46 49 46 00 46 49 00 46 46 46 46 49 46 46 00 46 00 00 46 00 00 00 00 49 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 49 00 00 00 00 49 00 49 00 00 49 00 00 00 00 00 00 49 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 49 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00
*/
