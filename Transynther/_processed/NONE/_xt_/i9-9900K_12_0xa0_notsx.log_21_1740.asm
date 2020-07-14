.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a609, %rcx
clflush (%rcx)
nop
nop
nop
xor $12716, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
add $59137, %rdi
lea addresses_WC_ht+0x14ec9, %rsi
lea addresses_WC_ht+0x14fb1, %rdi
nop
nop
nop
nop
add $1547, %r12
mov $75, %rcx
rep movsq
xor $24392, %rcx
lea addresses_WC_ht+0x3dc9, %r10
sub $6150, %rsi
movb (%r10), %r12b
nop
sub $27178, %rdi
lea addresses_UC_ht+0x1a7c9, %rsi
lea addresses_D_ht+0x16cc9, %rdi
cmp %rbp, %rbp
mov $73, %rcx
rep movsb
nop
sub $25574, %rdi
lea addresses_UC_ht+0xdbc9, %rsi
lea addresses_WC_ht+0x843d, %rdi
nop
nop
nop
inc %rbx
mov $64, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x8204, %rcx
clflush (%rcx)
inc %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
and $3801, %rcx
lea addresses_UC_ht+0xf519, %rcx
clflush (%rcx)
nop
nop
nop
nop
add $29150, %r12
movb $0x61, (%rcx)
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x334d, %rsi
lea addresses_normal+0x13c27, %rdi
nop
nop
nop
cmp $10339, %r13
mov $89, %rcx
rep movsw
sub %r13, %r13

// Load
lea addresses_UC+0x111c9, %rdi
dec %rdx
mov (%rdi), %r15
nop
nop
sub $59038, %rdi

// Store
lea addresses_normal+0x57c9, %r13
nop
nop
nop
nop
xor $7765, %r9
movl $0x51525354, (%r13)
nop
nop
nop
xor $6948, %r13

// Store
lea addresses_D+0x91c9, %r13
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_PSE+0x13169, %rcx
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%rcx)
nop
mfence

// REPMOV
lea addresses_RW+0xc7c9, %rsi
lea addresses_UC+0x5a91, %rdi
nop
nop
nop
and $5159, %rax
mov $39, %rcx
rep movsl
nop
nop
nop
add %r13, %r13

// Store
lea addresses_WT+0x6fc9, %rdx
nop
xor $48469, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rdx)
xor %rcx, %rcx

// Store
lea addresses_RW+0x9605, %rsi
nop
nop
nop
cmp $32453, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rsi)
and %rsi, %rsi

// Faulty Load
lea addresses_D+0x17fc9, %r15
clflush (%r15)
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r15), %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_RW', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'36': 21}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
