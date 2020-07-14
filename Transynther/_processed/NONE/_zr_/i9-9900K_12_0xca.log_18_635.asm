.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x191ff, %rsi
lea addresses_D_ht+0x14b8f, %rdi
nop
add %rbp, %rbp
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1993f, %r13
nop
nop
nop
nop
nop
add $47969, %r10
movb (%r13), %r14b
inc %rsi
lea addresses_UC_ht+0x59ff, %rcx
nop
cmp $56917, %r14
movl $0x61626364, (%rcx)
lfence
lea addresses_A_ht+0x1c1ff, %rdi
nop
nop
nop
and %r13, %r13
mov (%rdi), %r14w
nop
nop
sub %r14, %r14
lea addresses_A_ht+0xd3cf, %rsi
lea addresses_UC_ht+0x5107, %rdi
nop
cmp %r11, %r11
mov $37, %rcx
rep movsq
inc %r13
lea addresses_A_ht+0x1ddff, %rcx
nop
nop
sub $38171, %rdi
mov (%rcx), %r11w
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x1a93f, %r14
nop
cmp %rsi, %rsi
movb (%r14), %r11b
nop
nop
add $62808, %rbp
lea addresses_UC_ht+0x2dff, %r10
nop
nop
nop
nop
nop
add $49397, %r11
mov (%r10), %r13
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x2f91, %r11
nop
sub %rbp, %rbp
movw $0x6162, (%r11)
inc %rsi
lea addresses_UC_ht+0x6caf, %r13
clflush (%r13)
cmp $9517, %r10
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
add $30313, %rcx
lea addresses_normal_ht+0x10d06, %rsi
lea addresses_D_ht+0x1e35a, %rdi
nop
nop
cmp $33830, %r10
mov $45, %rcx
rep movsw
nop
nop
dec %r11
lea addresses_normal_ht+0x10737, %rsi
lea addresses_WC_ht+0x9cb5, %rdi
nop
nop
and %r13, %r13
mov $96, %rcx
rep movsq
nop
sub %r13, %r13
lea addresses_D_ht+0x1d9ff, %r14
nop
add %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0x8c5c, %rsi
lea addresses_UC_ht+0x15dff, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $4, %rcx
rep movsw
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rax
push %rsi

// Load
lea addresses_A+0xe077, %r10
nop
nop
nop
nop
and %r12, %r12
mov (%r10), %r15d
xor %rsi, %rsi

// Store
mov $0x40127e0000000cff, %r15
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
nop
nop
nop
add $26811, %rax

// Store
lea addresses_A+0x8ae3, %r10
clflush (%r10)
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovaps %ymm2, (%r10)
nop
nop
nop
sub $16266, %rax

// Store
lea addresses_RW+0x2ebf, %r8
xor $26413, %rax
movl $0x51525354, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r10
nop
nop
nop
and %rsi, %rsi

// Load
mov $0x38187800000009ff, %r10
nop
nop
nop
inc %r15
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
nop
xor %r10, %r10

// Load
lea addresses_WT+0x1c9ff, %r12
nop
nop
and $24179, %r10
movups (%r12), %xmm4
vpextrq $1, %xmm4, %r15
nop
cmp $20374, %r14

// Faulty Load
lea addresses_WT+0x1c9ff, %r10
nop
nop
inc %r12
mov (%r10), %r15d
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
