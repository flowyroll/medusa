.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1db3f, %r15
nop
and $30047, %rdi
mov (%r15), %rsi
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0xcaeb, %rsi
lea addresses_normal_ht+0x1c93f, %rdi
nop
xor $42015, %r9
mov $51, %rcx
rep movsl
nop
inc %rsi
lea addresses_normal_ht+0x1913f, %r10
cmp $53778, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r10)
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x92df, %rcx
cmp $54926, %r9
movb $0x61, (%rcx)
nop
nop
nop
nop
sub $38116, %rdi
lea addresses_WT_ht+0xf93f, %rcx
nop
nop
and $23258, %r14
mov (%rcx), %r15
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0xfbbf, %rsi
lea addresses_UC_ht+0x470c, %rdi
clflush (%rsi)
nop
nop
add $52777, %r8
mov $115, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0xf12f, %rdi
and $40384, %r10
mov (%rdi), %cx
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x9503, %r15
dec %rcx
movl $0x61626364, (%r15)
nop
nop
nop
xor $64152, %rcx
lea addresses_normal_ht+0x1113f, %rcx
nop
nop
nop
and %r10, %r10
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
nop
nop
nop
sub $61123, %r8
lea addresses_A_ht+0x12c1b, %r14
nop
dec %rsi
movb $0x61, (%r14)
nop
nop
cmp $20234, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x7b45, %r15
nop
nop
nop
nop
nop
cmp $48895, %r12
mov (%r15), %r11d
nop
nop
nop
nop
add $54980, %rcx

// Load
lea addresses_UC+0x1d1dc, %rdx
clflush (%rdx)
nop
nop
cmp %rcx, %rcx
mov (%rdx), %r12w
nop
nop
nop
lfence

// Store
lea addresses_PSE+0x19e3f, %r11
nop
add $39522, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
nop
sub $35123, %rax

// Store
lea addresses_WC+0x6b13, %r11
nop
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%r11)
cmp $52588, %rax

// Store
lea addresses_normal+0x1a49f, %r15
nop
nop
cmp %rdi, %rdi
movb $0x51, (%r15)
nop
nop
nop
cmp $46240, %rdx

// Store
mov $0x2af, %rax
nop
nop
nop
add $22365, %r15
movw $0x5152, (%rax)
nop
nop
nop
inc %r11

// REPMOV
lea addresses_US+0xd7bf, %rsi
mov $0x35d34d0000000d3f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
mfence
mov $24, %rcx
rep movsw
nop
nop
cmp $21608, %rdi

// Load
lea addresses_WC+0x1b668, %rsi
nop
nop
nop
cmp $59888, %rax
movb (%rsi), %cl
nop
nop
nop
xor $13548, %rcx

// Faulty Load
lea addresses_RW+0x413f, %rax
clflush (%rax)
cmp %rdx, %rdx
mov (%rax), %cx
lea oracles, %rcx
and $0xff, %rcx
shlq $12, %rcx
mov (%rcx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 1, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'ff': 1}
ff
*/
