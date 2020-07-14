.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x12da5, %rsi
lea addresses_WT_ht+0x188fd, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $15094, %r15
mov $19, %rcx
rep movsl
nop
nop
nop
nop
and $62915, %r10
lea addresses_UC_ht+0x1cced, %rsi
lea addresses_WC_ht+0x1ea05, %rdi
nop
nop
add %r14, %r14
mov $111, %rcx
rep movsb
nop
nop
nop
xor $22337, %r14
lea addresses_WC_ht+0x55ef, %r14
nop
nop
sub %r13, %r13
mov (%r14), %esi
nop
nop
dec %r14
lea addresses_WT_ht+0xf4ed, %rsi
lea addresses_UC_ht+0xa6ed, %rdi
nop
nop
add %r10, %r10
mov $42, %rcx
rep movsw
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x9eed, %r14
nop
nop
nop
xor %r13, %r13
mov (%r14), %rcx
nop
mfence
lea addresses_A_ht+0xdaa1, %r15
nop
nop
sub %rsi, %rsi
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0xaeed, %r14
nop
nop
nop
nop
cmp $48113, %rdi
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
add $12029, %r15
lea addresses_WC_ht+0x6ed, %rsi
lea addresses_WT_ht+0x35fd, %rdi
clflush (%rdi)
sub %rdx, %rdx
mov $47, %rcx
rep movsb
nop
nop
nop
nop
add $3223, %rdx
lea addresses_UC_ht+0x19aed, %rdx
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
sub $6363, %rdi
lea addresses_normal_ht+0x16bbd, %rcx
nop
nop
nop
nop
add %r15, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x194ed, %rsi
lea addresses_normal_ht+0x1d0af, %rdi
nop
nop
and %rdx, %rdx
mov $83, %rcx
rep movsq
nop
cmp %r14, %r14
lea addresses_UC_ht+0x166ed, %rsi
lea addresses_WC_ht+0xaced, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $7927, %r10
mov $110, %rcx
rep movsb
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x11f6d, %rsi
lea addresses_D_ht+0x3282, %rdi
clflush (%rsi)
nop
nop
add $45311, %rdx
mov $51, %rcx
rep movsq
nop
nop
sub $19794, %rsi
lea addresses_WC_ht+0xd8a5, %r14
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
and $16841, %rdi
lea addresses_WC_ht+0x1c80d, %rsi
lea addresses_D_ht+0x94ed, %rdi
nop
nop
nop
nop
add $22072, %r14
mov $33, %rcx
rep movsq
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rdi

// Store
lea addresses_UC+0x10d0d, %r13
nop
nop
sub $53304, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movaps %xmm7, (%r13)
nop
nop
nop
nop
and $7476, %r13

// Faulty Load
lea addresses_PSE+0xbeed, %r8
nop
dec %rdi
movups (%r8), %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'33': 73}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
