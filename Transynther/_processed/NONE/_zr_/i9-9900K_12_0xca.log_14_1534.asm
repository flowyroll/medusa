.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x211c, %rbx
lfence
mov (%rbx), %rsi
nop
inc %rbx
lea addresses_D_ht+0x1f14, %r15
nop
nop
and %rsi, %rsi
movb $0x61, (%r15)
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x8f5c, %rsi
lea addresses_D_ht+0x3f5c, %rdi
sub %r10, %r10
mov $62, %rcx
rep movsl
nop
nop
nop
add $50291, %rbx
lea addresses_normal_ht+0x1275c, %rsi
lea addresses_WC_ht+0x99dc, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $49, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $45390, %r13
lea addresses_WC_ht+0x331c, %r15
nop
cmp %r14, %r14
movw $0x6162, (%r15)
nop
sub %r13, %r13
lea addresses_A_ht+0x1635c, %r10
nop
nop
nop
nop
nop
xor $4435, %rcx
mov (%r10), %r14d
nop
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x1e19c, %rsi
lea addresses_UC_ht+0x1d95c, %rdi
nop
nop
nop
nop
dec %r15
mov $25, %rcx
rep movsb
nop
nop
nop
xor $31967, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi

// Load
lea addresses_D+0x51dc, %r8
nop
mfence
mov (%r8), %r10
nop
and %r10, %r10

// Store
lea addresses_WT+0x156dc, %r12
nop
nop
nop
nop
nop
dec %rdi
movw $0x5152, (%r12)
nop
add %r10, %r10

// Store
lea addresses_A+0x1cb21, %rbx
nop
and %r13, %r13
movl $0x51525354, (%rbx)
and $63772, %rdi

// Faulty Load
lea addresses_WC+0x1bf5c, %rdi
xor $45105, %rbx
mov (%rdi), %r12w
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
