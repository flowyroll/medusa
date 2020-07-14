.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rsi
lea addresses_A_ht+0x15bcc, %r14
nop
add $3850, %r12
mov $0x6162636465666768, %rax
movq %rax, (%r14)
sub $6885, %rcx
lea addresses_normal_ht+0x988c, %r8
cmp $4488, %rax
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r11
nop
dec %rax
lea addresses_normal_ht+0x392c, %rax
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rax)
nop
dec %rax
lea addresses_D_ht+0x948c, %r11
nop
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
cmp $4521, %r14
lea addresses_UC_ht+0xf86c, %r12
nop
sub %r8, %r8
movw $0x6162, (%r12)
nop
cmp $8891, %rsi
lea addresses_WC_ht+0x733c, %rsi
clflush (%rsi)
sub %r14, %r14
movl $0x61626364, (%rsi)
nop
add %rax, %rax
lea addresses_WT_ht+0x1634c, %r8
and $62857, %rsi
mov (%r8), %rcx
nop
nop
nop
and $52163, %r11
lea addresses_WC_ht+0x1ca78, %r12
nop
sub %rsi, %rsi
mov (%r12), %rcx
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x5fcc, %rax
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rax)
nop
nop
cmp $29615, %r11
lea addresses_UC_ht+0x1784c, %r11
nop
nop
nop
nop
nop
xor $18248, %rcx
movb (%r11), %r14b
sub %rcx, %rcx
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_RW+0x1afcc, %rdx
nop
nop
nop
xor $28999, %r9
mov (%rdx), %rbp
nop
sub %r11, %r11

// Store
lea addresses_normal+0x1c7cc, %r13
nop
cmp $61805, %r11
movw $0x5152, (%r13)
nop
sub $6163, %rbp

// Faulty Load
lea addresses_RW+0x1afcc, %r9
nop
nop
nop
sub %rdi, %rdi
mov (%r9), %r11w
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
