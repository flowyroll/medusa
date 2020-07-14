.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1d724, %r10
clflush (%r10)
add $23547, %rsi
movl $0x61626364, (%r10)
nop
nop
and %r10, %r10
lea addresses_D_ht+0xc604, %rax
nop
nop
cmp $20801, %r11
movb (%rax), %r9b
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x86bc, %r9
nop
xor $50895, %rsi
movw $0x6162, (%r9)
nop
and $12181, %r10
lea addresses_WT_ht+0x16be4, %rsi
lea addresses_UC_ht+0x7694, %rdi
xor %r11, %r11
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $44900, %r10
lea addresses_D_ht+0x87e4, %rbp
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rbp)
nop
nop
add $10953, %r9
lea addresses_WC_ht+0x9ae4, %rbp
nop
nop
nop
nop
nop
cmp %rax, %rax
movw $0x6162, (%rbp)
and $11085, %rcx
lea addresses_D_ht+0x159e4, %rsi
lea addresses_A_ht+0x4be4, %rdi
nop
sub $51243, %r10
mov $93, %rcx
rep movsq
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xae94, %rsi
lea addresses_WT_ht+0x7aa4, %rdi
dec %rax
mov $79, %rcx
rep movsw
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x19c2a, %r9
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, (%r9)
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x19c44, %rcx
nop
nop
nop
nop
nop
dec %r9
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
and $48872, %r11
lea addresses_WT_ht+0x15ae4, %rsi
xor $51845, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm1
and $0xffffffffffffffc0, %rsi
vmovaps %ymm1, (%rsi)
nop
nop
nop
nop
xor $15810, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x189e4, %rcx
nop
add %rdi, %rdi
mov (%rcx), %r15d
nop
nop
xor %rbx, %rbx

// REPMOV
lea addresses_D+0x1c6e4, %rsi
lea addresses_WC+0x42f4, %rdi
nop
and %rax, %rax
mov $58, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x17a24, %r15
nop
xor $36121, %rbp
movb $0x51, (%r15)
nop
nop
and %rbx, %rbx

// Store
mov $0x2217050000000864, %rax
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%rax)
and $46482, %rdi

// Store
lea addresses_WT+0x49f4, %rbx
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
sub $24476, %rbx

// Load
lea addresses_RW+0x1c0c, %r15
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r15), %rbp
nop
nop
nop
nop
nop
xor $27639, %rax

// Faulty Load
lea addresses_normal+0x6be4, %rax
nop
xor %rbx, %rbx
mov (%rax), %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'34': 20}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
