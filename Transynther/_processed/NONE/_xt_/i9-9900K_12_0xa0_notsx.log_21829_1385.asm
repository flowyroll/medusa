.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x112d8, %rsi
lea addresses_UC_ht+0xa480, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $59, %rcx
rep movsq
nop
nop
nop
nop
add $24813, %r12
lea addresses_WT_ht+0x6640, %r14
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r14)
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x8b68, %rcx
nop
xor %r9, %r9
mov (%rcx), %rsi
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x18400, %r12
nop
nop
nop
xor $58126, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%r12)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0xd100, %rsi
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
cmp $43249, %r10
lea addresses_UC_ht+0x1b80, %rsi
clflush (%rsi)
nop
nop
add $57801, %r12
movb $0x61, (%rsi)
nop
xor $39059, %r10
lea addresses_normal_ht+0x57b3, %rsi
lea addresses_WT_ht+0x11d08, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $42, %rcx
rep movsb
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x7200, %r12
nop
nop
nop
nop
nop
sub $53078, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r12)
nop
cmp $25105, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x16e80, %rsi
nop
nop
nop
nop
dec %rdx
movb (%rsi), %al
add %rcx, %rcx

// Load
lea addresses_RW+0xee78, %r8
nop
dec %rcx
movb (%r8), %dl
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_A+0x3e80, %rsi
lea addresses_A+0xe898, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $101, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0xc880, %rax
nop
and %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
dec %rcx

// Store
lea addresses_WT+0x1f298, %rbp
clflush (%rbp)
nop
cmp $40965, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rbp)
nop
cmp %rdi, %rdi

// Store
lea addresses_RW+0x1d9e0, %rdx
nop
nop
nop
nop
sub $33640, %r8
movw $0x5152, (%rdx)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_normal+0x16be0, %rdi
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdi)
nop
sub $7970, %rax

// Store
lea addresses_D+0x10c80, %rdi
add %rcx, %rcx
movl $0x51525354, (%rdi)
nop
xor $37718, %rdi

// Store
lea addresses_A+0x5d80, %rcx
cmp %rsi, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
inc %rdi

// Load
lea addresses_D+0x8c80, %r8
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r8), %ebp
nop
nop
add $19754, %rbp

// Load
mov $0x15af540000000b68, %rsi
nop
nop
nop
sub %rcx, %rcx
vmovaps (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
dec %rdi

// Faulty Load
lea addresses_D+0xf080, %rbp
add $7433, %rax
mov (%rbp), %edi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 7}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
