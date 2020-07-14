.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x5122, %r9
nop
nop
nop
dec %rcx
movl $0x61626364, (%r9)
sub %rdi, %rdi
lea addresses_D_ht+0x11573, %rbx
nop
nop
sub %r14, %r14
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
and $11573, %rdx
lea addresses_WC_ht+0x8ab2, %r14
cmp %rdx, %rdx
mov (%r14), %r9d
sub %rbx, %rbx
lea addresses_WC_ht+0x1be5, %rcx
cmp $60192, %rax
movb $0x61, (%rcx)
inc %r9
lea addresses_UC_ht+0xcab6, %rdx
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
cmp $8497, %rdx
lea addresses_normal_ht+0x17f42, %rax
nop
xor %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %rax
movntdq %xmm7, (%rax)
nop
nop
add $5219, %rcx
lea addresses_WT_ht+0xc892, %rsi
lea addresses_A_ht+0x1ab22, %rdi
nop
nop
and $17174, %r14
mov $40, %rcx
rep movsw
nop
inc %r14
lea addresses_A_ht+0x11922, %rsi
lea addresses_UC_ht+0xda62, %rdi
cmp $46636, %r14
mov $6, %rcx
rep movsb
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x18122, %rbx
add %rax, %rax
mov (%rbx), %r9d
nop
nop
add $50702, %r9
lea addresses_WC_ht+0xf361, %rdx
nop
nop
dec %r9
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x2afa, %rsi
lea addresses_normal_ht+0x19322, %rdi
nop
cmp $33218, %rbx
mov $127, %rcx
rep movsq
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x15022, %rax
nop
dec %rdi
mov (%rax), %cx
nop
xor %r9, %r9
lea addresses_normal_ht+0x18922, %rbx
nop
nop
inc %r9
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x5860, %r13
clflush (%r13)
nop
nop
and $18895, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r13)
nop
add $51026, %rdi

// Store
lea addresses_normal+0x6e46, %r10
cmp %r11, %r11
movw $0x5152, (%r10)
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x2522, %r13
nop
nop
nop
nop
sub %r9, %r9
movb $0x51, (%r13)
nop
nop
mfence

// REPMOV
lea addresses_WC+0x18622, %rsi
lea addresses_A+0xa922, %rdi
nop
add $41337, %r11
mov $115, %rcx
rep movsl
nop
nop
nop
add $4119, %r9

// Load
lea addresses_PSE+0x19522, %r9
clflush (%r9)
nop
nop
and $17996, %rcx
movb (%r9), %r11b
nop
nop
nop
nop
nop
cmp $21008, %r10

// Load
lea addresses_UC+0x15da2, %r11
nop
nop
cmp $39517, %rcx
movups (%r11), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
nop
nop
nop
dec %r13

// Load
mov $0x322, %rdi
add $22011, %rcx
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_A+0xa922, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rcx), %r9w
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'38': 88}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
