.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7f6c, %r10
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%r10)
cmp %rbp, %rbp
lea addresses_D_ht+0x11b95, %rsi
lea addresses_D_ht+0x427d, %rdi
cmp %r15, %r15
mov $42, %rcx
rep movsw
nop
inc %r10
lea addresses_WT_ht+0x1e83d, %rsi
lea addresses_normal_ht+0x312b, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
dec %r8
mov $15, %rcx
rep movsw
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x7c7d, %rax
nop
sub %rcx, %rcx
movw $0x6162, (%rax)
add %r15, %r15
lea addresses_UC_ht+0xd4d5, %rcx
clflush (%rcx)
nop
sub %rax, %rax
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
xor $33222, %r10
lea addresses_A_ht+0x17a7d, %rbp
nop
nop
nop
nop
inc %r15
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
add $284, %r10
lea addresses_UC_ht+0x14015, %rax
dec %rbp
mov $0x6162636465666768, %r10
movq %r10, (%rax)
nop
nop
nop
and $41656, %rsi
lea addresses_UC_ht+0x1e32d, %rsi
lea addresses_normal_ht+0xa7d, %rdi
nop
nop
sub $4634, %rbp
mov $40, %rcx
rep movsb
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x12e7d, %rsi
nop
nop
nop
xor %rcx, %rcx
mov (%rsi), %r15
add %r10, %r10
lea addresses_WT_ht+0x172bd, %r10
nop
nop
nop
cmp $48051, %rax
movw $0x6162, (%r10)
nop
nop
nop
add $16303, %rax
lea addresses_normal_ht+0x1727d, %rsi
lea addresses_WT_ht+0x954d, %rdi
nop
xor $64443, %r15
mov $79, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x1c47d, %rax
xor %rsi, %rsi
mov (%rax), %r8w
nop
xor $28262, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rcx

// Store
lea addresses_A+0x727d, %r11
nop
inc %r12
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0x13d21, %r12
nop
nop
nop
nop
nop
xor $27310, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
cmp $50763, %rcx

// Load
lea addresses_normal+0x1de6d, %r12
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%r12), %r11b
nop
nop
nop
nop
sub %r11, %r11

// Load
lea addresses_PSE+0x15bcd, %r8
nop
nop
nop
nop
sub $599, %r12
mov (%r8), %eax
nop
add %r10, %r10

// Faulty Load
lea addresses_normal+0x8a7d, %r8
nop
nop
sub $16720, %r12
mov (%r8), %ecx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 1, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
