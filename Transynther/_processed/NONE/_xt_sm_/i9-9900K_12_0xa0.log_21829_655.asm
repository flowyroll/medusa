.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xbf77, %rbp
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
and $0xffffffffffffffc0, %rbp
movntdq %xmm0, (%rbp)
nop
nop
nop
add $55124, %rbp
lea addresses_WC_ht+0x74ff, %rbx
nop
nop
nop
xor $46584, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%rbx)
xor %rdx, %rdx
lea addresses_WT_ht+0x119ab, %r11
clflush (%r11)
nop
and $44972, %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
and $37653, %rdx
lea addresses_WC_ht+0xfb17, %rsi
lea addresses_A_ht+0x929f, %rdi
nop
nop
nop
nop
nop
xor $54887, %rbx
mov $2, %rcx
rep movsw
nop
cmp $99, %rcx
lea addresses_A_ht+0xc67f, %rbp
nop
dec %rbx
mov (%rbp), %r11d
xor $1985, %rbp
lea addresses_normal_ht+0x492b, %rdi
nop
nop
nop
sub %rbx, %rbx
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rcx
sub %rcx, %rcx
lea addresses_WC_ht+0x1885f, %r10
nop
nop
sub $17441, %rdx
mov (%r10), %ecx
nop
nop
nop
nop
xor $54176, %rdx
lea addresses_WT_ht+0xa91f, %rbx
sub $30206, %rbp
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1722f, %rcx
nop
nop
nop
nop
xor $19508, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x1131f, %r14
nop
nop
sub $27105, %rax
movw $0x5152, (%r14)
nop
nop
xor $52595, %rdi

// Store
lea addresses_normal+0x1033f, %rdx
nop
nop
nop
nop
cmp $31633, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
add $62484, %rdi

// Store
lea addresses_PSE+0x526f, %rbp
inc %rdx
movb $0x51, (%rbp)
sub %r14, %r14

// Store
lea addresses_PSE+0x71f, %rdx
nop
nop
nop
xor $60326, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0x921f, %r10
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r10)
xor %rbx, %rbx

// Store
mov $0xcb3, %rdi
nop
nop
and $18121, %rbx
movw $0x5152, (%rdi)
xor $30862, %rbx

// Load
lea addresses_A+0x1cf1f, %r14
nop
nop
cmp %rdx, %rdx
mov (%r14), %rbp
nop
nop
dec %r10

// Faulty Load
lea addresses_PSE+0x71f, %r10
nop
nop
nop
xor %rbp, %rbp
movb (%r10), %bl
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
