.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ca95, %rdi
clflush (%rdi)
nop
nop
nop
add $29321, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdi)
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x4d95, %rsi
lea addresses_WC_ht+0xe715, %rdi
nop
nop
nop
nop
cmp $51341, %rax
mov $75, %rcx
rep movsb
sub $60558, %rsi
lea addresses_D_ht+0x1addd, %rsi
lea addresses_WT_ht+0xd595, %rdi
clflush (%rdi)
sub %rdx, %rdx
mov $10, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $30185, %rdx
lea addresses_A_ht+0x1b95, %rcx
nop
nop
nop
xor $32293, %rbx
movl $0x61626364, (%rcx)
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x12395, %rsi
lea addresses_A_ht+0x18d15, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $58, %rcx
rep movsb
xor $34151, %rdi
lea addresses_A_ht+0x13ce5, %rbp
nop
nop
dec %rsi
movl $0x61626364, (%rbp)
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0xb60d, %rax
nop
nop
add $14135, %rcx
movups (%rax), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
inc %rax
lea addresses_WC_ht+0x7d05, %rsi
add $3510, %rax
mov (%rsi), %bp
add $45654, %rcx
lea addresses_normal_ht+0xefa5, %rdi
clflush (%rdi)
nop
nop
inc %rsi
mov (%rdi), %cx
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x18d95, %rdx
clflush (%rdx)
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %rdx
movntdq %xmm1, (%rdx)
nop
cmp $7352, %rbx
lea addresses_UC_ht+0x4e75, %rbp
nop
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
xor $2903, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rsi

// Store
mov $0xd95, %r10
nop
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WC+0x86df, %rbp
nop
nop
nop
nop
and %r14, %r14
movb $0x51, (%rbp)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_WT+0x19d95, %r10
nop
sub %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
mov $0x743ffd00000002ed, %r14
nop
nop
nop
cmp %r12, %r12
movb $0x51, (%r14)
nop
nop
nop
nop
nop
and $23194, %r14

// Store
lea addresses_RW+0x1ec9, %r14
nop
xor $53867, %rbp
movw $0x5152, (%r14)
nop
nop
nop
nop
cmp %r8, %r8

// Load
lea addresses_US+0x17c95, %r14
nop
nop
nop
nop
nop
dec %r8
mov (%r14), %r12w
nop
nop
nop
nop
xor $1092, %r8

// Store
lea addresses_normal+0x35bd, %r8
nop
dec %rax
movl $0x51525354, (%r8)
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0x1640b, %rax
clflush (%rax)
nop
nop
sub $64376, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rax)
nop
sub %rsi, %rsi

// Load
lea addresses_UC+0x6795, %r14
nop
nop
nop
inc %rax
mov (%r14), %bp
nop
nop
nop
cmp %rax, %rax

// Store
mov $0x5bd27c0000000a75, %r10
nop
nop
nop
nop
nop
add $36132, %r8
movb $0x51, (%r10)
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_WT+0x19d95, %rsi
add %r14, %r14
mov (%rsi), %r12d
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'58': 52}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
