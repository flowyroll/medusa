.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xabaf, %rsi
nop
cmp $42733, %r11
mov (%rsi), %r10d
nop
nop
add $62603, %r10
lea addresses_normal_ht+0x21df, %rsi
lea addresses_UC_ht+0x4dbf, %rdi
nop
nop
nop
cmp %r8, %r8
mov $27, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1b553, %r8
clflush (%r8)
nop
nop
dec %r11
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1e6bf, %rsi
lea addresses_WC_ht+0x1d117, %rdi
nop
nop
add $25865, %r12
mov $0, %rcx
rep movsw
nop
inc %r10
lea addresses_D_ht+0x1c311, %r12
nop
nop
nop
nop
nop
sub $19348, %rsi
mov (%r12), %ecx
nop
inc %r8
lea addresses_WT_ht+0x13e7, %r12
clflush (%r12)
nop
nop
nop
nop
xor %rcx, %rcx
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rdi
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x1016b, %rdi
nop
xor $44450, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)

// Exception!!!
nop
nop
mov (0), %r14
nop
nop
add %rdx, %rdx

// Store
lea addresses_US+0x6abf, %rdx
nop
nop
cmp $62328, %r14
movw $0x5152, (%rdx)
nop
nop
nop
nop
xor $14894, %rax

// Load
lea addresses_PSE+0x6ebe, %rdi
nop
nop
nop
and $6955, %rdx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_normal+0x102bf, %rbx
nop
nop
nop
cmp $24249, %r9
mov (%rbx), %r13d
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0x6abf, %rdi
cmp %r9, %r9
mov (%rdi), %edx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'52': 118}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
