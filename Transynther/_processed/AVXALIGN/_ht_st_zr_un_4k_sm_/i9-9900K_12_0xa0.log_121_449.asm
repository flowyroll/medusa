.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1a26a, %r8
xor %rdx, %rdx
mov (%r8), %rcx
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x94ae, %rsi
lea addresses_WC_ht+0xad2e, %rdi
nop
dec %rbp
mov $26, %rcx
rep movsq
nop
and $10932, %rdx
lea addresses_D_ht+0x1224c, %rsi
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%rsi), %rdi
nop
nop
nop
inc %r8
lea addresses_WT_ht+0xad2e, %rcx
xor %rbp, %rbp
movb (%rcx), %r8b
nop
xor $39016, %r8
lea addresses_normal_ht+0xf46e, %rdx
nop
nop
nop
cmp $620, %rcx
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1ded8, %r10
nop
cmp %rsi, %rsi
mov (%r10), %r8
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xe72e, %rsi
lea addresses_D_ht+0xabe, %rdi
nop
xor %rdx, %rdx
mov $21, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_D_ht+0x1990e, %rsi
lea addresses_D_ht+0x1462e, %rdi
nop
nop
xor %r11, %r11
mov $125, %rcx
rep movsl
and %rcx, %rcx
lea addresses_UC_ht+0x1a58, %rsi
lea addresses_UC_ht+0xcd2e, %rdi
nop
nop
nop
and $21757, %r11
mov $31, %rcx
rep movsq
nop
nop
nop
sub $43504, %r11
lea addresses_UC_ht+0x1e986, %r10
nop
and %r11, %r11
mov (%r10), %edi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0xa92e, %rsi
lea addresses_WC_ht+0x1a86e, %rdi
nop
nop
nop
cmp $3376, %r10
mov $5, %rcx
rep movsl
nop
add %r11, %r11
lea addresses_normal_ht+0x12ffa, %rcx
nop
nop
nop
nop
mfence
movw $0x6162, (%rcx)
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x105b6, %rdi
sub $39000, %rsi
mov (%rdi), %rcx
nop
nop
nop
and $45792, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rdi

// Load
lea addresses_PSE+0x1e72e, %r8
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%r8), %edi
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x1f0ae, %r10
nop
cmp $43511, %r9
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
dec %rdi

// Load
lea addresses_D+0xb12e, %rbp
nop
nop
nop
sub %r13, %r13
mov (%rbp), %r8
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WT+0x752e, %r12
and %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
nop
nop
nop
nop
nop
add $29892, %r9

// Load
lea addresses_WT+0x285e, %r10
nop
cmp $52412, %r9
mov (%r10), %r13d
nop
nop
nop
nop
inc %r9

// Store
mov $0x5e1eb0000000d2e, %r13
nop
nop
nop
nop
nop
xor $25023, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
add %r13, %r13

// Load
lea addresses_RW+0x4dce, %rdi
nop
nop
xor $35306, %r8
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
dec %r10

// Faulty Load
lea addresses_WT+0x752e, %rdi
nop
nop
nop
nop
nop
dec %r13
vmovntdqa (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'46': 36, 'e1': 1, '13': 1, 'f2': 1, '52': 1, '8a': 1, '82': 2, 'e5': 6, 'fe': 1, 'ff': 4, '10': 1, 'cb': 1, '83': 1, 'e0': 3, '00': 10, 'fb': 1, '6f': 1, 'e8': 8, 'f5': 3, 'f4': 11, 'be': 4, '14': 4, '05': 1, 'dc': 2, '72': 6, 'ca': 4, 'c7': 1, '12': 2, 'f0': 3}
46 00 dc 46 72 10 00 be 46 f4 f4 f4 f4 f4 f4 f4 f4 f4 f4 f4 46 fe 46 46 72 00 00 ca ca ca ca 00 e1 46 c7 46 46 00 83 46 ff ff ff ff 46 e5 cb 72 f5 f5 f5 46 46 dc 46 46 be 46 46 72 46 6f 00 46 e8 e8 f0 f0 f0 46 e5 e5 e5 e5 e5 12 12 00 72 46 52 00 be 46 fb f2 00 82 46 05 46 82 13 8a 46 46 e8 46 72 46 46 46 46 46 46 be 14 e8 e8 46 e8 e8 e8 14 14 14 e0 e0 e0 46 46
*/
