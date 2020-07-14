.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa1bd, %rbx
lfence
mov (%rbx), %r9
and $44890, %rax
lea addresses_A_ht+0xa0dd, %rsi
lea addresses_UC_ht+0x1bd3d, %rdi
nop
nop
nop
add %r12, %r12
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $50817, %rcx
lea addresses_normal_ht+0x90fd, %r9
nop
nop
nop
nop
nop
dec %r12
movw $0x6162, (%r9)
nop
nop
nop
nop
sub $27, %rbp
lea addresses_A_ht+0x98fd, %rsi
lea addresses_normal_ht+0x1b61d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r12
mov $41, %rcx
rep movsq
nop
nop
nop
nop
and $40952, %rbp
lea addresses_A_ht+0xa1fd, %rax
nop
nop
nop
nop
nop
sub $42853, %rbx
movw $0x6162, (%rax)
nop
inc %rax
lea addresses_UC_ht+0x6b67, %rdi
clflush (%rdi)
nop
nop
cmp %rbp, %rbp
mov (%rdi), %bx
xor %r12, %r12
lea addresses_WC_ht+0x157fd, %r9
nop
add %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r9)
nop
nop
add $60305, %rbp
lea addresses_WC_ht+0x1427d, %r12
clflush (%r12)
and $3104, %rcx
movw $0x6162, (%r12)
and %rbx, %rbx
lea addresses_WC_ht+0xe8fd, %rax
nop
nop
nop
cmp $59220, %r12
movw $0x6162, (%rax)
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x73dd, %rbp
nop
add %rsi, %rsi
mov (%rbp), %r12
add $42080, %rsi
lea addresses_D_ht+0x593d, %rbp
nop
cmp %rcx, %rcx
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x30fd, %rsi
sub %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x120e1, %rcx
cmp %rdi, %rdi
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WC+0x89fd, %rax
cmp %r13, %r13
movw $0x5152, (%rax)
nop
and $56230, %rcx

// Load
mov $0x5c1, %rax
nop
nop
inc %r11
movb (%rax), %cl
xor $59772, %rsi

// Load
lea addresses_PSE+0x18db, %rbp
clflush (%rbp)
nop
nop
nop
nop
add $9502, %rsi
mov (%rbp), %r11
nop
nop
nop
nop
nop
and %r14, %r14

// Load
lea addresses_RW+0x16afd, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
dec %rax
mov (%rcx), %rbp
nop
nop
nop
xor %r14, %r14

// Load
mov $0x9202d0000000a05, %rcx
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rcx), %rax
nop
nop
nop
nop
add $46592, %rsi

// Load
lea addresses_normal+0x28fd, %rcx
nop
nop
nop
nop
dec %r14
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
nop
nop
nop
sub $13575, %rax

// Faulty Load
lea addresses_RW+0xc8fd, %rbp
add $25698, %rsi
movb (%rbp), %al
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'32': 232}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
