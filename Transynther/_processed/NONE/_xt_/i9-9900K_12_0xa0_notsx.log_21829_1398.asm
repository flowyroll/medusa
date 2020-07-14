.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x194a4, %r10
nop
nop
nop
and $51660, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
xor $37718, %rbx
lea addresses_normal_ht+0xf6a4, %rax
inc %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rax)
nop
nop
nop
nop
add $10692, %r10
lea addresses_normal_ht+0x13524, %rsi
lea addresses_UC_ht+0x15a1c, %rdi
add %r11, %r11
mov $68, %rcx
rep movsw
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x122e4, %rsi
lea addresses_normal_ht+0xdca4, %rdi
clflush (%rdi)
nop
nop
nop
add %r10, %r10
mov $19, %rcx
rep movsl
nop
sub %r10, %r10
lea addresses_normal_ht+0xf4c4, %rdi
nop
nop
nop
dec %rdx
movw $0x6162, (%rdi)
nop
nop
and $47631, %rdx
lea addresses_D_ht+0xe34c, %rbx
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
add $20217, %r13
lea addresses_A_ht+0x2264, %rsi
lea addresses_A_ht+0x119cc, %rdi
nop
inc %r13
mov $45, %rcx
rep movsb
nop
nop
nop
cmp $9022, %rsi
lea addresses_normal_ht+0x5ca4, %rcx
and %r13, %r13
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rax
nop
sub %r10, %r10
lea addresses_WT_ht+0x12ca4, %rsi
lea addresses_normal_ht+0x153f4, %rdi
nop
inc %r10
mov $98, %rcx
rep movsb
and %rax, %rax
lea addresses_normal_ht+0x182f4, %rax
nop
nop
nop
cmp $16169, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rax)
nop
nop
cmp $28648, %rax
lea addresses_UC_ht+0xaaa4, %r13
nop
nop
nop
dec %rdi
movb (%r13), %dl
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1eba4, %rsi
lea addresses_normal_ht+0x113e4, %rdi
nop
cmp $10056, %r10
mov $19, %rcx
rep movsw
nop
nop
sub $4389, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x7ca4, %rsi
nop
dec %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
sub $46909, %rbx

// Store
lea addresses_D+0x5796, %rdi
nop
nop
nop
inc %r12
movw $0x5152, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_normal+0xb1a4, %r12
nop
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%r12)
nop
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_D+0xe4a4, %rsi
lea addresses_RW+0x58ec, %rdi
clflush (%rsi)
nop
cmp $22356, %r9
mov $116, %rcx
rep movsb
nop
add %r15, %r15

// Faulty Load
lea addresses_RW+0x1aca4, %rsi
nop
and %r9, %r9
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 0, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
