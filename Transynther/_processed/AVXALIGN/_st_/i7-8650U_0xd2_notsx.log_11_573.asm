.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x15d73, %rdx
nop
nop
nop
cmp $54510, %r13
mov (%rdx), %r10
nop
and %r10, %r10
lea addresses_WT_ht+0x7372, %r11
nop
nop
nop
nop
nop
sub $56745, %rbp
mov (%r11), %r9w
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x1e3e3, %r11
nop
and %rsi, %rsi
mov (%r11), %r10w
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x97af, %rsi
lea addresses_WC_ht+0x34b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r10
mov $103, %rcx
rep movsq
nop
nop
nop
nop
and $12044, %rcx
lea addresses_WT_ht+0x178f, %rsi
lea addresses_D_ht+0x64bf, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $49, %rcx
rep movsb
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x77e7, %r11
nop
nop
nop
nop
nop
sub %r9, %r9
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
lfence
lea addresses_WT_ht+0x44f3, %rcx
nop
xor %r10, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub $14272, %r11
lea addresses_WT_ht+0x459b, %r10
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xd015, %rsi
lea addresses_WC_ht+0x90f3, %rdi
nop
nop
nop
nop
cmp $3854, %rdx
mov $41, %rcx
rep movsw
nop
nop
nop
dec %r11
lea addresses_D_ht+0x12cf3, %rdx
nop
nop
and $19421, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x168f3, %rsi
lea addresses_normal_ht+0x1b119, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rdx, %rdx
mov $108, %rcx
rep movsb
and %rsi, %rsi
lea addresses_UC_ht+0x4b1b, %rdi
nop
nop
nop
nop
nop
add $11833, %r13
mov (%rdi), %r11
xor %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx

// Store
lea addresses_A+0x9cf3, %r12
nop
nop
nop
dec %r9
movw $0x5152, (%r12)
nop
nop
nop
nop
add %r15, %r15

// Load
mov $0x553, %r13
xor %rax, %rax
mov (%r13), %r11d
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_UC+0x98f3, %rax
nop
nop
nop
add %r15, %r15
movw $0x5152, (%rax)
and %r13, %r13

// Store
lea addresses_WT+0x1f843, %r12
clflush (%r12)
add %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
nop
nop
xor $7621, %r9

// Store
lea addresses_normal+0x67f3, %r11
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r15
movq %r15, (%r11)
sub $41962, %rcx

// Faulty Load
lea addresses_PSE+0x108f3, %rcx
nop
nop
add %r11, %r11
mov (%rcx), %r15d
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'33': 11}
33 33 33 33 33 33 33 33 33 33 33
*/
