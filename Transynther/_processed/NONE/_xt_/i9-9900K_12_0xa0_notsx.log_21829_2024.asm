.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x242e, %rsi
clflush (%rsi)
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x15b4e, %rsi
lea addresses_UC_ht+0x141ee, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rdx
mov $60, %rcx
rep movsb
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0xde2e, %rsi
nop
nop
cmp $7594, %r14
mov (%rsi), %edx
nop
nop
nop
nop
nop
cmp $54330, %rbp
lea addresses_A_ht+0xeaee, %r14
clflush (%r14)
nop
inc %rbp
mov (%r14), %cx
nop
add %rdi, %rdi
lea addresses_D_ht+0x40ae, %rsi
lea addresses_WT_ht+0x534e, %rdi
nop
add $45030, %r13
mov $51, %rcx
rep movsw
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x17962, %r14
nop
nop
nop
sub $3241, %r8
movl $0x61626364, (%r14)
nop
dec %rbp
lea addresses_A_ht+0x111e6, %rdi
nop
nop
nop
lfence
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0xf22e, %r13
nop
sub $47298, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%r13)
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x6f46, %rsi
lea addresses_D_ht+0x1bdae, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $21831, %r8
mov $126, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x195a6, %rcx
nop
add %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rcx)
and %rbp, %rbp
lea addresses_WC_ht+0x862e, %rbp
nop
nop
nop
add $61882, %rsi
mov (%rbp), %cx
nop
nop
nop
sub $36226, %r14
lea addresses_D_ht+0xd22e, %rsi
lea addresses_UC_ht+0x662e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $27466, %r14
mov $31, %rcx
rep movsw
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x6f7a, %rdx
nop
nop
xor $23402, %rsi
mov (%rdx), %r14d
xor $43583, %rdi
lea addresses_D_ht+0x1d2d6, %rsi
lea addresses_WT_ht+0x46a2, %rdi
nop
nop
nop
mfence
mov $52, %rcx
rep movsq
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi

// Load
lea addresses_A+0x16a2e, %r15
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r15), %r8w
nop
nop
nop
nop
nop
and $41438, %rbp

// Store
lea addresses_WC+0xc42e, %r14
nop
nop
nop
and $35073, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
nop
sub $37979, %rbp

// Store
mov $0xeae, %r14
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r14)
inc %r14

// Store
lea addresses_WC+0xdc2e, %r8
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%r8)
nop
nop
sub $35129, %rcx

// Load
mov $0x62e, %r14
nop
add %rbx, %rbx
movb (%r14), %r15b
nop
sub $20962, %r8

// Store
lea addresses_US+0x1b0ce, %rdi
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
add %r14, %r14

// Store
lea addresses_WT+0xfbae, %r14
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
cmp $36474, %rbp

// Faulty Load
lea addresses_PSE+0x1fe2e, %rcx
nop
and $41530, %rdi
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
