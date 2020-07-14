.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4ab2, %rbx
nop
and %r15, %r15
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
sub $24451, %r8
lea addresses_normal_ht+0x51a6, %r14
nop
nop
nop
and $53136, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xda72, %r9
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%r9), %r13
nop
nop
inc %r13
lea addresses_WT_ht+0x13b32, %rsi
lea addresses_WC_ht+0x1df32, %rdi
nop
nop
nop
cmp $7076, %r9
mov $94, %rcx
rep movsb
and $64953, %rdi
lea addresses_D_ht+0x72ca, %rsi
inc %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0xd592, %r9
sub $59487, %r15
movl $0x61626364, (%r9)
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x9ee, %r14
nop
nop
sub %r9, %r9
mov (%r14), %r13d
nop
nop
nop
nop
nop
add $37550, %rcx
lea addresses_UC_ht+0xdf32, %rcx
nop
cmp $27509, %rsi
movb (%rcx), %r9b
and $44378, %rcx
lea addresses_WT_ht+0x732, %r14
sub $47389, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x422, %rsi
lea addresses_normal_ht+0x10f32, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $41, %rcx
rep movsq
dec %r8
lea addresses_A_ht+0x16b72, %rsi
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rsi)
nop
and $38454, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xaaea, %rsi
lea addresses_D+0x14f32, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $111, %rcx
rep movsq
nop
nop
cmp %r10, %r10

// REPMOV
lea addresses_PSE+0x1262e, %rsi
lea addresses_WT+0x6732, %rdi
and $3899, %r15
mov $19, %rcx
rep movsb
and %rsi, %rsi

// Store
lea addresses_WT+0x3332, %r11
xor %r10, %r10
movb $0x51, (%r11)
nop
nop
inc %r8

// Load
lea addresses_A+0xb732, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub $2016, %r10
mov (%r8), %r15w
nop
nop
nop
nop
nop
sub $18944, %r15

// Store
lea addresses_WT+0x6322, %r8
nop
nop
nop
nop
add %r15, %r15
movw $0x5152, (%r8)
xor $21239, %r10

// Store
lea addresses_PSE+0x1524e, %rsi
nop
cmp $38311, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
inc %r15

// Store
lea addresses_WC+0x1b592, %rcx
nop
nop
nop
nop
cmp $18214, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
dec %rsi

// Store
mov $0xa32, %rdi
nop
nop
nop
nop
cmp $32436, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
nop
add $49040, %rcx

// Load
lea addresses_UC+0x7b32, %r10
nop
nop
nop
nop
nop
cmp $23683, %rcx
movb (%r10), %r11b
nop
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_normal+0xff32, %r15
nop
nop
xor %rdi, %rdi
mov (%r15), %r8w
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
