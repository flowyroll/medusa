.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x5e45, %r9
sub $43434, %rdx
movups (%r9), %xmm6
vpextrq $1, %xmm6, %rdi
nop
sub $45184, %r12
lea addresses_normal_ht+0x13135, %r10
nop
nop
nop
nop
cmp $36425, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm3
and $0xffffffffffffffc0, %r10
vmovntdq %ymm3, (%r10)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x16545, %rsi
lea addresses_normal_ht+0x1eac1, %rdi
clflush (%rsi)
nop
nop
mfence
mov $61, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x3745, %rsi
lea addresses_WC_ht+0x1cf45, %rdi
nop
nop
and $37429, %r9
mov $94, %rcx
rep movsl
nop
nop
inc %r12
lea addresses_WC_ht+0x195c5, %rcx
nop
nop
sub $60630, %r10
mov (%rcx), %r9w
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0xafc5, %rsi
lea addresses_WT_ht+0x96f5, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r8, %r8
mov $73, %rcx
rep movsq
nop
nop
nop
sub $57350, %rsi
lea addresses_normal_ht+0x152c5, %r8
nop
nop
nop
nop
dec %rbp
mov (%r8), %r9w
nop
nop
sub $2702, %rsi
lea addresses_WT_ht+0x13245, %rsi
lea addresses_WT_ht+0x1830, %rdi
nop
nop
nop
nop
xor $63380, %rdx
mov $123, %rcx
rep movsb
nop
nop
nop
sub $24516, %rcx
lea addresses_normal_ht+0x1506b, %rsi
lea addresses_D_ht+0x10b45, %rdi
nop
sub %r8, %r8
mov $100, %rcx
rep movsb
nop
nop
nop
nop
add $18598, %rbp
lea addresses_WC_ht+0x1b05, %rdi
nop
add $36861, %r12
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xb7d5, %r9
clflush (%r9)
nop
nop
nop
xor $31236, %r8
movl $0x61626364, (%r9)
nop
cmp $56385, %r10
lea addresses_A_ht+0x1aca5, %rsi
lea addresses_WC_ht+0x8e45, %rdi
nop
nop
add %rdx, %rdx
mov $31, %rcx
rep movsw
cmp %rdx, %rdx
lea addresses_D_ht+0x1d937, %r9
nop
nop
nop
nop
nop
xor $6752, %rsi
movl $0x61626364, (%r9)
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xed91, %rdi
clflush (%rdi)
nop
nop
nop
sub %r9, %r9
mov (%rdi), %bp
nop
add $5453, %r12
lea addresses_A_ht+0x14745, %r10
nop
cmp $3673, %rdi
mov (%r10), %r9d
xor %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_PSE+0x418d, %rax
clflush (%rax)
nop
nop
nop
nop
and $44273, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
nop
nop
sub $6151, %rdi

// Faulty Load
lea addresses_US+0x745, %r8
add %r11, %r11
movaps (%r8), %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'44': 577, '48': 12872, '00': 901, '7f': 1, '45': 756, '49': 6722}
44 48 48 48 49 49 49 49 45 48 48 48 48 48 48 48 48 49 49 49 49 45 48 48 00 48 48 48 48 48 49 49 49 49 49 45 48 48 48 48 48 48 48 49 49 49 45 48 48 48 48 48 48 49 49 49 49 45 48 48 48 48 48 48 48 48 48 48 49 49 49 49 48 48 48 48 48 48 48 48 48 49 49 00 49 49 45 48 48 48 48 48 48 48 48 48 48 49 49 49 45 48 48 48 48 48 48 48 48 48 49 49 49 49 48 48 48 48 48 48 48 48 48 48 48 48 49 49 49 49 49 45 48 48 48 48 48 48 48 48 48 48 48 49 49 49 49 49 45 48 48 48 48 48 48 48 48 48 48 49 49 49 49 48 48 48 48 48 48 48 48 48 49 49 49 49 49 45 48 48 48 48 48 48 48 48 48 49 49 49 49 49 49 00 00 48 48 48 48 48 48 48 49 49 49 49 49 49 48 48 48 00 48 48 48 48 48 48 48 49 49 49 49 45 48 48 48 48 48 48 48 48 49 49 49 45 48 48 48 48 00 48 48 48 48 48 48 48 49 49 49 49 49 49 45 48 48 48 48 48 48 48 48 48 49 49 49 49 49 45 48 48 48 48 48 48 48 48 49 49 49 49 49 49 49 44 48 48 48 48 48 48 48 48 48 49 49 49 49 49 49 45 48 00 48 48 48 48 48 48 49 49 49 49 00 00 48 48 48 48 48 48 49 49 49 49 49 49 45 48 48 48 48 48 48 48 48 48 49 49 49 49 49 49 45 48 48 48 48 48 48 00 48 48 48 49 49 49 49 45 48 48 48 48 48 48 48 49 00 49 49 49 49 49 45 48 48 48 48 48 48 48 48 48 48 48 48 49 49 44 44 48 48 48 48 48 48 00 49 49 49 49 44 44 48 48 48 48 48 48 48 48 49 49 49 49 44 00 48 48 48 48 48 48 48 49 49 49 49 49 48 00 48 48 48 48 48 48 48 48 48 49 49 49 49 44 00 48 48 48 48 48 48 48 48 48 49 49 49 49 45 48 48 48 48 48 48 48 48 49 49 49 49 49 49 45 00 48 48 48 48 48 48 49 49 49 45 48 48 48 48 48 48 48 48 48 48 49 49 49 49 49 45 48 48 48 48 48 48 48 48 49 49 49 49 49 49 44 00 48 48 48 48 48 48 48 48 49 49 49 00 00 48 48 48 48 48 48 48 48 48 49 49 49 49 44 48 48 48 48 48 48 48 48 49 00 49 49 49 49 49 48 48 48 48 48 48 48 48 48 48 49 49 49 49 49 45 48 48 48 48 48 48 48 48 48 48 49 49 49 00 00 48 48 48 48 48 48 48 48 48 49 49 49 44 00 00 48 48 48 48 48 48 49 49 49 49 49 44 00 48 48 48 48 48 48 48 48 49 49 49 44 48 48 48 48 48 48 48 48 48 49 49 49 49 49 45 48 48 48 48 48 48 48 48 48 48 49 49 49 49 49 00 00 00 00 48 48 48 48 48 48 48 49 49 49 49 49 45 48 48 48 48 48 48 48 48 48 48 49 49 44 48 00 48 48 48 48 48 48 48 49 49 49 49 49 44 00 48 48 48 48 48 48 48 49 49 49 49 44 44 00 48 48 48 48 48 48 48 49 49 49 45 48 48 48 48 48 48 48 48 48 49 49 49 49 49 49 44 48 48 48 48 48 48 48 48 48 48 00 48 49 49 49 49 49 44 48 48 48 48 48 48 48 48 48 49 49 49 49 49 49 44 00 48 48 48 48 48 48 48 49 49 49 44 00 48 48 48 48 48 48 48 48 48 48 49 49 49 49 49 48 00 00 48 48 48 48 48 48 48 48 49 49 49 49 45 48 48 48 48 48 48 48 48 48 49 49 49 49 49 49 44 48 48 48 48 48 48 48 49 49 49 49 45 48 00 48 48 48 48 48 48 48 49 49 49 49 49 00 00 00 48 48 48 00 48 48 48 48 49 49 49 49 45 48 00 48 48 48 48 48 48 48 48 49 49 49 49 49 45 00 48 48 48 48 48 48 48 48 48 49 49 49 49 49 44 00 48 48 48 48 48 48 48 49 49 45 48 48 48 48 48 48 48 48 48 48 48 49 49 49 49 45 00 48 48 48 48 48 48 48 48 49 49 49 49 49 44 00 00 48 00 48 48 48 48 48 48 48 48 48 49 49 49 49 49 44 48 48 48 48 48 48 48 48 49 49 49 49 49 49 48 48 48 48 48 48 48 48
*/
