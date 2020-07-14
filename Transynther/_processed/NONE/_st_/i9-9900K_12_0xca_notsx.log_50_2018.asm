.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1f38, %rsi
lea addresses_WC_ht+0x4738, %rdi
nop
nop
nop
nop
nop
cmp $11452, %r14
mov $20, %rcx
rep movsb
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x588, %rsi
lea addresses_UC_ht+0x11b40, %rdi
nop
nop
nop
xor %r9, %r9
mov $123, %rcx
rep movsw
nop
nop
inc %rdi
lea addresses_normal_ht+0xca38, %rsi
lea addresses_A_ht+0x17ab8, %rdi
sub %r15, %r15
mov $78, %rcx
rep movsb
nop
nop
xor $62777, %rsi
lea addresses_D_ht+0x1bf38, %rsi
lea addresses_A_ht+0xa928, %rdi
nop
nop
cmp $19898, %rbx
mov $82, %rcx
rep movsq
sub %rdi, %rdi
lea addresses_normal_ht+0x1db38, %rsi
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rsi)
sub %rdi, %rdi
lea addresses_WC_ht+0x85b8, %rsi
lea addresses_WC_ht+0xc738, %rdi
nop
nop
inc %rbp
mov $51, %rcx
rep movsq
dec %r9
lea addresses_normal_ht+0x1b938, %r9
nop
nop
xor $19919, %rdi
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
add $39525, %rsi
lea addresses_WC_ht+0xd3d0, %rsi
lea addresses_D_ht+0x16cdc, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $105, %rcx
rep movsq
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x10d38, %r15
nop
nop
nop
nop
xor $61367, %rcx
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
cmp $57495, %r9
lea addresses_D_ht+0x1af68, %rsi
lea addresses_UC_ht+0x15718, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rbp
mov $9, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x16328, %rdi
cmp $42963, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
xor $15119, %rdi
lea addresses_UC_ht+0x153a8, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rdi)
sub %r14, %r14
lea addresses_UC_ht+0xf4d8, %rbp
nop
nop
nop
nop
nop
xor $43730, %r9
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x13d38, %r9
nop
nop
nop
inc %rbx
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
and $35238, %r9
lea addresses_WT_ht+0x1b6b8, %r9
nop
nop
nop
nop
nop
cmp $64883, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
add $49771, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x17b38, %r15
nop
nop
nop
nop
inc %r10
movl $0x51525354, (%r15)
nop
nop
xor %r10, %r10

// Store
lea addresses_normal+0x18f38, %rax
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_normal+0x18f38, %rbx
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rbx)
sub $64621, %r9

// Store
lea addresses_normal+0x18f38, %r10
nop
cmp %rax, %rax
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
dec %r14

// Store
lea addresses_UC+0x3538, %r10
nop
sub $63760, %r9
movb $0x51, (%r10)
nop
inc %r9

// Store
lea addresses_normal+0x18f38, %rax
nop
cmp $25973, %r11
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
inc %r11

// Store
lea addresses_A+0x11f38, %rax
nop
nop
nop
nop
xor %r11, %r11
movl $0x51525354, (%rax)
nop
nop
nop
dec %r15

// Load
lea addresses_normal+0x146c0, %r10
nop
nop
nop
nop
nop
xor %rax, %rax
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
add $28084, %r11

// Store
lea addresses_normal+0x18f38, %rbx
clflush (%rbx)
and $18498, %r9
movl $0x51525354, (%rbx)
nop
nop
nop
nop
cmp $54452, %rax

// Store
lea addresses_normal+0x31f0, %r9
nop
nop
nop
nop
add $14970, %r11
movw $0x5152, (%r9)
nop
nop
nop
xor %rax, %rax

// REPMOV
lea addresses_PSE+0x1d20, %rsi
lea addresses_normal+0x18f38, %rdi
clflush (%rdi)
nop
nop
nop
and $31848, %r14
mov $12, %rcx
rep movsq
nop
nop
nop
inc %r14

// REPMOV
lea addresses_PSE+0xe338, %rsi
lea addresses_A+0xc7c8, %rdi
add %r14, %r14
mov $126, %rcx
rep movsw
nop
nop
sub $39441, %r10

// Store
lea addresses_RW+0x15f7b, %rdi
nop
sub %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
xor $19837, %rdi

// REPMOV
mov $0xf74, %rsi
lea addresses_WT+0x12a38, %rdi
cmp %r11, %r11
mov $28, %rcx
rep movsw
nop
nop
add $27283, %rax

// Faulty Load
lea addresses_normal+0x18f38, %rsi
nop
nop
nop
nop
cmp %r15, %r15
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_PSE'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_P'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'33': 50}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
