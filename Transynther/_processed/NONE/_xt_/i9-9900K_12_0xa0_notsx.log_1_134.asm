.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1d6c6, %rdx
nop
nop
nop
nop
nop
add $10968, %rax
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x1b87e, %r8
nop
and %rbp, %rbp
movw $0x6162, (%r8)
nop
cmp %r11, %r11
lea addresses_D_ht+0xeefe, %rsi
lea addresses_A_ht+0x1a1fe, %rdi
clflush (%rsi)
nop
nop
nop
add %rbp, %rbp
mov $69, %rcx
rep movsl
nop
nop
nop
nop
and $53780, %rdx
lea addresses_normal_ht+0x609e, %rsi
lea addresses_WC_ht+0x582a, %rdi
nop
nop
and %r8, %r8
mov $46, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x198fe, %rdi
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
and $0xffffffffffffffc0, %rdi
vmovaps %ymm0, (%rdi)
nop
nop
nop
and $2008, %rdx
lea addresses_WT_ht+0x166fe, %rsi
nop
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x127f6, %rbp
nop
nop
nop
nop
nop
dec %r11
mov (%rbp), %edi
nop
add $25142, %rbp
lea addresses_UC_ht+0x1a23a, %r11
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %r11
vmovntdq %ymm7, (%r11)
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x13432, %rsi
nop
nop
nop
nop
add %r11, %r11
mov (%rsi), %di
nop
nop
nop
nop
nop
cmp $27541, %rax
lea addresses_WT_ht+0x1a73e, %rsi
lea addresses_normal_ht+0x231e, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x16c2e, %r8
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r8)
add %rdi, %rdi
lea addresses_normal_ht+0xb57e, %rdi
nop
add %rax, %rax
mov (%rdi), %r11d
nop
nop
xor $24868, %r11
lea addresses_UC_ht+0x6efe, %rsi
lea addresses_UC_ht+0x2f7e, %rdi
nop
nop
nop
nop
sub $35478, %rbx
mov $73, %rcx
rep movsq
nop
nop
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rax
push %rbx

// Store
lea addresses_WT+0xf0fe, %rax
nop
and %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
inc %r14

// Store
lea addresses_RW+0x14c5e, %r10
inc %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovaps %ymm6, (%r10)
add $65206, %r9

// Store
lea addresses_WC+0x759e, %r9
nop
nop
nop
sub $40792, %r8
movw $0x5152, (%r9)
nop
nop
nop
nop
add %r11, %r11

// Store
mov $0xb5e, %r10
nop
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%r10)
cmp %rax, %rax

// Store
lea addresses_PSE+0x82fe, %r10
nop
nop
nop
add $4925, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovaps %ymm2, (%r10)
nop
nop
nop
add $33765, %r11

// Store
lea addresses_A+0x141fe, %r11
nop
nop
nop
add $40607, %rax
movl $0x51525354, (%r11)
nop
cmp %r11, %r11

// Store
lea addresses_PSE+0x54ee, %r11
nop
nop
nop
nop
cmp $50528, %rax
movw $0x5152, (%r11)
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_normal+0x11efe, %r8
nop
nop
nop
and $36851, %rax
mov (%r8), %r10w
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'34': 1}
34
*/
