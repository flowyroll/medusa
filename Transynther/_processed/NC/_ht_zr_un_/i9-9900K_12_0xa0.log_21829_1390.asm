.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf50d, %rsi
lea addresses_UC_ht+0xd5fd, %rdi
xor %rdx, %rdx
mov $13, %rcx
rep movsq
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0xd9dd, %r8
nop
nop
nop
nop
nop
cmp $8555, %rbp
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x67dd, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %rdi
movaps %xmm6, (%rdi)
nop
xor %r8, %r8
lea addresses_D_ht+0xb3fd, %rsi
lea addresses_D_ht+0x73fd, %rdi
nop
nop
nop
nop
nop
sub $22724, %r11
mov $118, %rcx
rep movsw
cmp $49898, %rdi
lea addresses_WC_ht+0xf0fd, %r11
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%r11)
nop
cmp %r8, %r8
lea addresses_UC_ht+0xb2, %rsi
lea addresses_A_ht+0x2855, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $95, %rcx
rep movsl
xor %rsi, %rsi
lea addresses_WT_ht+0x10c65, %rsi
lea addresses_D_ht+0xf37d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $95, %rcx
rep movsl
nop
add %r11, %r11
lea addresses_A_ht+0x20e, %rsi
lea addresses_WT_ht+0x5ebd, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $91, %rcx
rep movsq
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x11015, %rsi
lea addresses_WC_ht+0xaea1, %rdi
nop
nop
cmp %r11, %r11
mov $110, %rcx
rep movsl
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0x13cd1, %r11
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
and %r11, %r11

// Faulty Load
mov $0x2fa5e000000009fd, %r10
nop
nop
nop
add %rbx, %rbx
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'46': 11927, '49': 16, 'ff': 2, '00': 3081, '45': 6796, '47': 2, '08': 4, '1e': 1}
46 00 45 45 46 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 46 45 45 46 46 46 46 45 45 00 46 46 00 00 45 46 46 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 46 46 46 46 00 45 46 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 46 46 45 46 46 46 46 00 00 45 45 46 46 46 00 45 46 46 46 46 46 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 46 45 45 46 46 46 46 00 45 46 46 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 46 46 46 00 45 46 46 46 46 46 45 45 45 46 46 46 45 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 00 00 45 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 00 46 45 45 46 46 46 00 45 46 46 46 46 00 45 46 46 46 46 45 45 46 46 46 00 00 45 45 46 46 46 45 49 46 46 46 46 00 45 45 46 00 46 00 45 45 46 46 46 45 45 46 46 46 46 45 45 46 46 46 00 00 45 45 46 46 46 00 45 46 46 46 46 46 00 45 46 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 45 46 46 46 46 46 45 45 46 46 46 00 45 45 46 46 46 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 46 45 45 46 46 46 00 00 45 45 46 46 46 00 45 46 46 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 00 45 45 45 46 46 46 00 45 45 46 46 46 45 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 46 46 46 46 00 45 45 46 46 46 46 00 45 46 46 46 00 45 45 46 46 46 46 46 00 45 45 46 46 46 45 45 46 46 00 45 45 46 46 46 00 45 45 46 46 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 00 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 45 45 45 46 46 46 00 45 45 46 00 46 46 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 46 45 45 46 46 46 00 45 45 46 46 46 46 00 45 45 46 46 46 46 45 45 46 46 46 00 45 45 46 46 46 46 00 45 46 46 46 00 00 45 45 46 46 46 46 45 45 46 46 46 46 46 45 45 45 46 46 46 00 45 46 46 46 46 46 45 45 46 46 46 00 00 45 46 46 46 46 00 45 45 45 46 46 46 45 45 45 46 46 00 45 46 46 46 00 00 45 46 46 46 46 46 45 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 45 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 00 00 45 45 46 46 46 00 45 45 46 46 46 00 45 46 46 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 46 46 46 46 00 45 45 46 46 46 00 45 46 46 46 46 00 45 46 46 46 00 00 45 45 46 46 46 45 45 46 46 46 46 45 46 46 46 46 00 45 45 45 46 46 46 45 45 46 46 46 00 00 45 45 46 46 46 00 45 45 46 46 46 45 45 46 46 46 46 46 45 45 46 46 46 45 45 46 46 46 46 45 45 46 46 46 00 45 46 46 46 00 46 45 45 46 46 46 00 45 46 46 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 46 45 45 46 46 46 00 45 45 46 46 46 45 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 00 45 45 46 46 46 46 00 45 46 46 46 46 46 45 45 45 46 46 46 00 45 45 46 46 46 00 45 49 46 46 46 00 45 45 46 46 46 46
*/
