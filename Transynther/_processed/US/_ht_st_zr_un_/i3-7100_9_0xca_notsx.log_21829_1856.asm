.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xedcd, %rsi
lea addresses_WC_ht+0x15ff3, %rdi
nop
nop
nop
sub %r8, %r8
mov $50, %rcx
rep movsq
xor $55512, %rbp
lea addresses_normal_ht+0x1aa53, %rcx
nop
add %rbp, %rbp
mov (%rcx), %r8d
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x69f3, %rsi
lea addresses_WC_ht+0xfbf3, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $56615, %r8
mov $44, %rcx
rep movsb
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x7173, %rbx
add $61278, %rax
movb (%rbx), %cl
nop
add $1628, %rbx
lea addresses_A_ht+0x19af3, %rsi
lea addresses_D_ht+0x14d13, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $92, %rcx
rep movsl
nop
nop
nop
and $38627, %rbp
lea addresses_UC_ht+0x8df3, %rsi
lea addresses_A_ht+0x1d8f3, %rdi
nop
nop
nop
dec %rbx
mov $110, %rcx
rep movsw
nop
nop
inc %rsi
lea addresses_UC_ht+0x14bf3, %rsi
lea addresses_D_ht+0x11ff3, %rdi
sub $15688, %rbp
mov $100, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x2033, %rsi
lea addresses_WC_ht+0xcbf3, %rdi
clflush (%rsi)
cmp $17898, %r8
mov $109, %rcx
rep movsb
nop
nop
nop
nop
nop
add $13576, %rcx
lea addresses_UC_ht+0x1c7cb, %rdi
clflush (%rdi)
nop
nop
cmp $867, %rbx
mov (%rdi), %r9
nop
nop
and $65047, %rbx
lea addresses_UC_ht+0x100c3, %rsi
lea addresses_A_ht+0x11cf3, %rdi
nop
nop
nop
nop
nop
xor $11366, %rbp
mov $103, %rcx
rep movsq
nop
nop
nop
add $23323, %rbx
lea addresses_WC_ht+0x1e7f3, %rsi
lea addresses_WC_ht+0x13d33, %rdi
inc %r8
mov $83, %rcx
rep movsb
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x181f3, %rsi
lea addresses_normal_ht+0x1ddf3, %rdi
nop
nop
nop
nop
inc %r9
mov $103, %rcx
rep movsw
nop
xor $43687, %r9
lea addresses_A_ht+0x9617, %rsi
lea addresses_D_ht+0xacf3, %rdi
nop
xor %rbx, %rbx
mov $100, %rcx
rep movsb
nop
nop
xor $43505, %rax
lea addresses_WT_ht+0x12fb, %rsi
lea addresses_normal_ht+0x1d773, %rdi
nop
dec %r8
mov $68, %rcx
rep movsb
and %rcx, %rcx
lea addresses_UC_ht+0x76b3, %r8
nop
nop
xor $40923, %rbp
movw $0x6162, (%r8)
nop
nop
cmp $27941, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rdx

// Store
mov $0xbf3, %r11
sub $14422, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
dec %rbx

// Store
lea addresses_US+0x97f3, %rbx
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
xor $35467, %r11

// Store
lea addresses_PSE+0x1ddf3, %r12
nop
nop
nop
and $13112, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
nop
sub $52082, %r9

// Store
lea addresses_normal+0xb2f3, %r9
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
and $62347, %r12

// Store
lea addresses_normal+0x6d81, %r11
nop
nop
xor $10782, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movaps %xmm1, (%r11)
nop
nop
nop
nop
nop
add $3492, %rbx

// Store
lea addresses_A+0x17eb3, %r12
nop
nop
nop
add $50974, %r11
movw $0x5152, (%r12)
add %r12, %r12

// Store
lea addresses_normal+0x1bf33, %rbx
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
add $61925, %r13

// Faulty Load
lea addresses_US+0x43f3, %r11
nop
nop
nop
nop
nop
dec %rax
movups (%r11), %xmm2
vpextrq $0, %xmm2, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'67': 1120, '00': 9198, '50': 237, '48': 20, 'd7': 684, '20': 1, '33': 4, '18': 1, '10': 6, '45': 14, 'f0': 5300, '46': 4964, '49': 30, '01': 1, '1a': 17, '03': 1, 'd0': 2, '47': 229}
46 46 f0 46 00 00 00 d7 46 f0 f0 f0 f0 00 00 46 46 00 d7 00 46 f0 00 00 00 67 46 f0 f0 f0 46 46 46 f0 46 00 f0 46 00 00 46 00 00 f0 46 f0 d7 46 f0 00 46 00 f0 00 f0 00 d7 00 00 f0 00 46 46 00 f0 46 f0 00 f0 00 f0 f0 f0 46 46 00 f0 f0 00 46 f0 f0 f0 f0 46 46 f0 00 00 46 00 d7 00 46 f0 00 f0 50 f0 f0 00 00 00 00 f0 00 67 00 00 f0 00 47 f0 00 46 46 00 f0 f0 00 00 00 f0 46 f0 00 00 f0 00 00 00 f0 00 00 f0 f0 f0 00 46 f0 46 00 47 46 00 46 f0 00 00 f0 00 46 67 00 46 00 f0 00 f0 46 00 f0 f0 d7 46 f0 f0 46 00 f0 00 f0 46 46 00 00 f0 00 00 00 00 00 00 46 f0 f0 00 46 00 00 00 46 f0 00 f0 f0 f0 f0 46 46 46 46 00 d7 00 00 00 50 f0 00 46 00 46 00 00 00 00 00 00 f0 00 f0 00 00 46 46 00 00 f0 00 f0 f0 46 67 00 00 f0 00 f0 46 00 00 f0 00 00 f0 47 46 00 00 00 46 00 00 00 46 46 00 00 00 00 00 f0 00 00 47 46 00 00 00 00 00 46 f0 00 00 47 f0 f0 46 00 00 00 00 f0 f0 f0 f0 00 f0 00 f0 46 00 00 67 46 00 46 f0 46 46 00 00 46 f0 00 49 46 00 f0 00 00 f0 f0 46 46 00 46 00 00 d7 00 47 67 00 67 00 00 f0 00 00 00 00 46 00 f0 00 f0 00 00 46 46 00 00 f0 00 46 f0 00 00 46 00 f0 f0 d7 00 00 00 f0 46 00 46 46 00 00 00 00 00 f0 00 46 00 46 47 00 f0 46 f0 00 00 00 00 f0 f0 00 f0 46 f0 f0 00 f0 46 00 f0 00 46 00 f0 46 f0 00 00 f0 00 00 f0 f0 00 00 00 00 00 f0 00 d7 46 46 f0 46 f0 00 00 f0 d7 f0 46 00 46 46 00 46 00 00 00 67 f0 f0 00 46 00 00 67 00 00 00 f0 f0 46 00 f0 00 00 00 46 00 f0 00 00 00 00 d7 f0 f0 f0 46 50 67 67 46 50 46 00 00 f0 d7 00 f0 10 46 f0 f0 00 00 f0 00 f0 00 00 f0 00 46 00 46 00 46 f0 00 00 50 00 f0 00 47 00 00 46 46 46 f0 00 00 00 00 f0 46 00 f0 d7 00 00 46 00 46 00 f0 00 f0 46 00 d7 46 00 46 00 49 00 f0 00 f0 46 46 00 00 00 00 f0 f0 67 d7 00 00 00 00 00 00 00 00 00 f0 00 f0 f0 00 d7 46 00 46 46 00 46 46 00 00 49 46 00 00 46 46 46 00 46 00 67 67 49 f0 00 f0 00 00 46 f0 00 46 f0 00 46 f0 46 67 46 00 00 46 f0 46 f0 46 f0 00 00 00 46 f0 00 f0 46 46 f0 00 d7 f0 46 00 46 00 46 00 46 46 f0 46 00 f0 f0 00 00 f0 47 46 f0 46 46 47 67 d7 00 46 00 f0 00 00 00 f0 00 67 00 00 00 f0 00 46 f0 00 f0 00 f0 00 46 00 46 00 00 00 f0 00 f0 46 46 f0 00 00 00 50 00 47 f0 f0 f0 00 f0 00 67 f0 46 00 f0 f0 00 00 00 00 f0 46 00 46 00 00 00 46 00 1a 50 00 f0 46 00 f0 f0 f0 00 00 f0 00 00 00 f0 00 00 46 00 46 d7 00 00 00 d7 46 f0 67 00 f0 f0 00 46 00 f0 00 00 00 46 00 46 00 d7 00 00 f0 00 00 46 00 f0 00 00 46 00 00 f0 46 46 46 46 f0 46 00 f0 00 f0 f0 f0 00 46 d7 00 00 00 00 f0 00 46 00 67 00 f0 00 46 00 d7 f0 46 00 f0 00 f0 00 00 46 46 f0 00 46 00 46 00 47 f0 f0 00 00 00 00 67 46 46 00 d7 00 f0 d7 d7 00 f0 00 46 f0 49 50 00 f0 00 00 46 00 00 f0 46 00 46 f0 00 f0 f0 00 f0 46 46 00 00 46 46 67 67 f0 f0 f0 50 f0 00 00 50 f0 46 f0 00 f0 f0 46 46 46 45 f0 00 00 00 00 46 00 47 00 f0 f0 00 f0 00 00 00 00 f0 00 f0 67 00 00 00 00 46 00 46 00 46 00 00 f0 00 f0 f0 00 00 46 50 f0 00 00 46 46 f0 67 00 46 46 46 00 00 00 00 46 46 46 47 67 67 46 f0 00 00 00 f0 00 00 f0 f0 46 f0 46 f0 00 f0 f0 f0 f0 67 67 00 00 f0 00 46 46 d7 00 00 00 67 00 f0 67 00 00 46 f0 f0 46 46 d7 00 00 d7 00 00 00 00 f0 46 00 00 00 00
*/
