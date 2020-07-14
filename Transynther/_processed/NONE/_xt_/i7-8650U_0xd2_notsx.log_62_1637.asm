.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6527, %rcx
nop
inc %r14
movb $0x61, (%rcx)
add %rsi, %rsi
lea addresses_normal_ht+0x5847, %rsi
lea addresses_UC_ht+0x2f97, %rdi
clflush (%rsi)
and $44045, %r13
mov $28, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $8252, %rcx
lea addresses_A_ht+0x1317, %r14
nop
nop
nop
nop
nop
cmp %r13, %r13
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x7e23, %rsi
lea addresses_A_ht+0x5717, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $106, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1fa7, %rsi
lea addresses_A_ht+0x13b17, %rdi
lfence
mov $26, %rcx
rep movsw
nop
inc %r9
lea addresses_UC_ht+0x184bf, %r13
nop
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
sub $21541, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rdi
push %rdx

// Store
mov $0xf17, %r11
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
inc %rdx

// Store
lea addresses_D+0x81e3, %rdi
cmp %r14, %r14
movw $0x5152, (%rdi)
nop
add $57750, %rdi

// Load
lea addresses_A+0xfd17, %rdi
nop
nop
nop
sub $30054, %r9
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
nop
nop
add $45766, %rdx

// Store
lea addresses_WC+0x19717, %r12
inc %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
cmp $25903, %rdx

// Store
lea addresses_WC+0x1afb3, %r14
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x51525354, (%r14)
nop
nop
nop
nop
add $8913, %rdx

// Load
lea addresses_PSE+0x14317, %r11
cmp $34760, %rbx
mov (%r11), %di
nop
dec %r12

// Store
lea addresses_RW+0xc817, %r11
clflush (%r11)
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
xor $33198, %r12

// Store
lea addresses_WC+0x1c717, %r11
nop
nop
nop
cmp $489, %rdi
movw $0x5152, (%r11)
cmp $33416, %rdi

// Store
lea addresses_WC+0xb0bf, %rbx
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movaps %xmm7, (%rbx)
inc %rdx

// Faulty Load
lea addresses_PSE+0x9b17, %rbx
xor $25014, %r14
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'33': 62}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
