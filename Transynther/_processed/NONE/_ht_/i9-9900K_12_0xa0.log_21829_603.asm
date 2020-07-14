.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1b787, %rsi
lea addresses_WT_ht+0xb7c3, %rdi
nop
add $57156, %rbp
mov $51, %rcx
rep movsw
nop
nop
cmp $24317, %r8
lea addresses_UC_ht+0x17953, %r9
nop
nop
nop
nop
nop
cmp $60804, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
nop
and $39267, %rdi
lea addresses_WC_ht+0x435c, %rdi
nop
nop
nop
nop
cmp %r14, %r14
movw $0x6162, (%rdi)
xor $29492, %r14
lea addresses_A_ht+0x1d3b3, %rsi
lea addresses_A_ht+0x10143, %rdi
nop
cmp $44922, %r8
mov $89, %rcx
rep movsq
nop
nop
nop
sub $12384, %r8
lea addresses_WT_ht+0x14203, %r14
clflush (%r14)
nop
sub $62978, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r14)
nop
cmp $64817, %rsi
lea addresses_normal_ht+0x9bd7, %rsi
nop
nop
nop
nop
add %r8, %r8
movw $0x6162, (%rsi)
nop
nop
and $5270, %rsi
lea addresses_UC_ht+0xb3e3, %rbp
inc %rsi
movw $0x6162, (%rbp)
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1b783, %rcx
nop
nop
nop
nop
nop
cmp $59156, %r9
mov (%rcx), %rdi
nop
nop
nop
nop
nop
sub $54041, %r8
lea addresses_A_ht+0x19ed3, %rsi
lea addresses_D_ht+0x1bd03, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $92, %rcx
rep movsq
nop
nop
nop
nop
nop
and $2921, %rdi
lea addresses_WT_ht+0x9530, %r14
and $37656, %rcx
mov (%r14), %r8d
nop
xor %rsi, %rsi
lea addresses_A_ht+0x3bc3, %rsi
lea addresses_D_ht+0x1c85d, %rdi
add %r14, %r14
mov $59, %rcx
rep movsq
inc %rsi
lea addresses_WT_ht+0x1e14f, %r9
nop
nop
nop
nop
and $41812, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r9)
nop
nop
dec %rcx
lea addresses_normal_ht+0x14fc3, %r8
nop
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r8)
xor %r9, %r9
lea addresses_WT_ht+0x370f, %rsi
lea addresses_normal_ht+0x14003, %rdi
nop
nop
nop
nop
cmp $13232, %r15
mov $78, %rcx
rep movsw
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x900b, %r9
nop
xor %rcx, %rcx
mov (%r9), %r15
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0xa979, %rdx
nop
lfence
movl $0x51525354, (%rdx)
nop
nop
nop
xor $49088, %r9

// Store
mov $0x19c3700000000703, %rbx
nop
nop
add $14874, %rcx
movb $0x51, (%rbx)
nop
inc %rcx

// Load
lea addresses_WC+0x10d03, %rdi
nop
nop
nop
inc %r11
mov (%rdi), %rdx
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_RW+0xd743, %rbx
xor $38166, %rcx
movl $0x51525354, (%rbx)
dec %rdx

// Faulty Load
lea addresses_WC+0x10d03, %rdi
cmp $27916, %r15
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'46': 99, '49': 1, '45': 21729}
46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
