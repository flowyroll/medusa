.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx
lea addresses_D_ht+0x19c07, %rbx
nop
cmp $20747, %r11
mov (%rbx), %r9d
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x9393, %rax
cmp %r9, %r9
movl $0x61626364, (%rax)
sub $49187, %rbp
lea addresses_D_ht+0x1a587, %r9
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov (%r9), %r11
nop
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x3537, %rbx
nop
nop
nop
cmp %r14, %r14
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
nop
xor %r14, %r14
lea addresses_WC_ht+0x1c087, %r14
add $32205, %r12
movups (%r14), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
nop
nop
dec %r9
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x1bccb, %r8
nop
nop
nop
nop
nop
cmp $472, %r9
movw $0x5152, (%r8)
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x9487, %r8
nop
nop
nop
nop
nop
and $47880, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r8)
nop
nop
cmp %rax, %rax

// Store
lea addresses_D+0xee87, %rcx
nop
nop
lfence
movb $0x51, (%rcx)
xor %rdx, %rdx

// Store
lea addresses_WC+0xd42f, %r8
nop
nop
dec %rdx
movl $0x51525354, (%r8)
nop
nop
nop
and %rbx, %rbx

// Store
mov $0x920af0000000687, %rdx
clflush (%rdx)
cmp %rax, %rax
movw $0x5152, (%rdx)
xor %rsi, %rsi

// Load
lea addresses_WT+0x1b707, %rbx
clflush (%rbx)
nop
nop
nop
and $58099, %rsi
mov (%rbx), %r8
nop
nop
nop
nop
and $61081, %rsi

// Store
mov $0x7c4d670000000287, %r9
nop
nop
nop
add %r8, %r8
movb $0x51, (%r9)
nop
and %rbx, %rbx

// Faulty Load
mov $0x287, %rsi
clflush (%rsi)
nop
nop
nop
nop
and %rcx, %rcx
movntdqa (%rsi), %xmm0
vpextrq $0, %xmm0, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'51': 18, '00': 2}
00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51
*/
