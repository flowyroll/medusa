.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c97a, %r13
inc %rbx
mov (%r13), %r11
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x50a, %r11
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%r11)
nop
add %r13, %r13
lea addresses_UC_ht+0xa15a, %rsi
lea addresses_D_ht+0x1070a, %rdi
nop
inc %rbx
mov $78, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $31844, %r11
lea addresses_WC_ht+0x3c8a, %rsi
lea addresses_normal_ht+0x2162, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $19, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x1a2fa, %rsi
lea addresses_WC_ht+0x1c992, %rdi
nop
and %r11, %r11
mov $50, %rcx
rep movsl
nop
nop
nop
sub $8209, %rdi
lea addresses_normal_ht+0x1b088, %rbx
add $53139, %r15
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
add $54608, %rsi
lea addresses_A_ht+0x1a872, %r15
mfence
movl $0x61626364, (%r15)
lfence
lea addresses_WC_ht+0x11faa, %rsi
lea addresses_WT_ht+0xe10a, %rdi
nop
nop
nop
cmp $8562, %r9
mov $71, %rcx
rep movsl
nop
nop
nop
xor $30717, %r15
lea addresses_D_ht+0xaf8a, %r11
nop
sub %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r11)
add $14996, %r11
lea addresses_WT_ht+0xb78a, %rsi
nop
nop
nop
nop
nop
xor $34891, %r13
mov (%rsi), %rbx
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x940a, %r15
nop
nop
nop
add $41299, %rcx
movb (%r15), %r9b
nop
add %r11, %r11
lea addresses_WC_ht+0x198ea, %rbx
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rbx)
and %r11, %r11
lea addresses_normal_ht+0x950a, %rsi
nop
nop
nop
add $23376, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xe0a, %r9
nop
nop
nop
add $9823, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r9)
nop
cmp $6019, %r9

// Load
lea addresses_RW+0x11f0a, %rax
clflush (%rax)
mfence
movb (%rax), %dl
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_normal+0x13c0a, %rsi
nop
nop
inc %rdi
movl $0x51525354, (%rsi)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0x7a4a, %r9
nop
nop
nop
nop
nop
add $38372, %rbx
movw $0x5152, (%r9)
nop
and $40268, %r14

// Store
lea addresses_RW+0x155ca, %rdi
nop
nop
xor $22019, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
sub $30033, %r9

// Store
lea addresses_PSE+0xd50a, %rdi
nop
nop
sub $28464, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Faulty Load
lea addresses_PSE+0xbd0a, %rbx
nop
nop
add $18711, %r14
vmovups (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
