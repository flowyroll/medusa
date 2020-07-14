.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xc92, %rsi
lea addresses_A_ht+0x1d462, %rdi
clflush (%rsi)
nop
nop
nop
xor $9255, %rbp
mov $1, %rcx
rep movsb
nop
sub %r8, %r8
lea addresses_WT_ht+0x4c92, %rsi
lea addresses_WC_ht+0x13792, %rdi
nop
nop
nop
nop
add $1038, %r9
mov $39, %rcx
rep movsw
nop
dec %rbp
lea addresses_UC_ht+0x6e92, %rsi
lea addresses_normal_ht+0x17092, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $28600, %r15
mov $43, %rcx
rep movsw
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1eeba, %r9
clflush (%r9)
cmp $38396, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r9)
nop
nop
xor $63757, %r9
lea addresses_WT_ht+0x8c92, %r15
clflush (%r15)
nop
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
lfence
lea addresses_UC_ht+0x16072, %r15
nop
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x7492, %r8
nop
nop
nop
nop
sub $1118, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
sub $11953, %r8
lea addresses_WC_ht+0x17292, %rsi
lea addresses_WC_ht+0x11d82, %rdi
nop
nop
inc %rax
mov $64, %rcx
rep movsw
nop
nop
nop
nop
add $8786, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x5692, %r9
nop
nop
add %r14, %r14
movl $0x51525354, (%r9)
nop
nop
nop
nop
and $19107, %rsi

// REPMOV
lea addresses_PSE+0xee86, %rsi
lea addresses_RW+0x1bd12, %rdi
dec %rbx
mov $48, %rcx
rep movsb

// Exception!!!
nop
nop
nop
nop
mov (0), %rsi
nop
dec %r9

// Load
lea addresses_RW+0xe092, %r14
nop
cmp $45334, %r9
mov (%r14), %r13d
nop
nop
xor $39958, %rbx

// Faulty Load
lea addresses_normal+0x7492, %rbx
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rbx), %r9w
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
