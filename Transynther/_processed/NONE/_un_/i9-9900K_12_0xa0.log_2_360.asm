.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xb5fd, %rsi
lea addresses_WT_ht+0x1a695, %rdi
clflush (%rsi)
xor %r10, %r10
mov $47, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x3799, %rsi
lea addresses_D_ht+0x1275, %rdi
nop
nop
nop
xor $11256, %r14
mov $125, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x1cb75, %rsi
lea addresses_WT_ht+0xb975, %rdi
nop
add $57719, %r10
mov $65, %rcx
rep movsw
and %rdi, %rdi
lea addresses_normal_ht+0xc41d, %rsi
lea addresses_WT_ht+0x1abe8, %rdi
clflush (%rdi)
nop
nop
nop
add %rax, %rax
mov $67, %rcx
rep movsq
sub %rax, %rax
lea addresses_WC_ht+0x2675, %r14
nop
nop
nop
nop
sub $6419, %rax
movb $0x61, (%r14)
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1de75, %rsi
lea addresses_D_ht+0x1ad95, %rdi
nop
nop
dec %rbp
mov $107, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_WC_ht+0x14075, %rbp
nop
and $16004, %rax
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0xa5f5, %rbp
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rbp)
nop
nop
dec %r14
lea addresses_UC_ht+0x24f5, %rsi
lea addresses_UC_ht+0x17035, %rdi
nop
nop
nop
cmp %r10, %r10
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $28224, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xf15, %rsi
lea addresses_PSE+0x9775, %rdi
clflush (%rsi)
nop
nop
and $27840, %r13
mov $28, %rcx
rep movsq

// Exception!!!
nop
nop
mov (0), %rcx
sub $42702, %r13

// REPMOV
mov $0x575, %rsi
lea addresses_D+0x1b575, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $88, %rcx
rep movsw
inc %r13

// Store
lea addresses_UC+0x19605, %r13
nop
lfence
movb $0x51, (%r13)
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x1bf11, %r13
nop
nop
inc %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
sub $31235, %rbx

// Load
mov $0x75, %rcx
and %r9, %r9
mov (%rcx), %ax
nop
nop
nop
nop
cmp $8608, %rbx

// Store
lea addresses_D+0x1b575, %rax
nop
nop
nop
nop
sub $28967, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rax)
nop
add $41427, %rax

// Store
lea addresses_WC+0x1a09f, %r13
nop
add $13756, %rbx
movb $0x51, (%r13)
cmp %rcx, %rcx

// Faulty Load
lea addresses_D+0x1b575, %r9
clflush (%r9)
nop
nop
and %rax, %rax
mov (%r9), %rsi
lea oracles, %rsi
and $0xff, %rsi
shlq $12, %rsi
mov (%rsi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'cf': 2}
cf cf
*/
