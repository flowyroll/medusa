.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15071, %rsi
lea addresses_normal_ht+0x1b169, %rdi
cmp %rax, %rax
mov $14, %rcx
rep movsb
nop
nop
and $22859, %rdi
lea addresses_WT_ht+0xad03, %rax
clflush (%rax)
nop
nop
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%rax)
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x19009, %r10
clflush (%r10)
nop
nop
nop
nop
add $53370, %rbx
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x11409, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and $61499, %rcx
mov (%rbx), %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x1d009, %rcx
nop
cmp $60622, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x96a1, %rbx
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
xor $35260, %rbx
lea addresses_WT_ht+0x448d, %r9
nop
nop
nop
and $15082, %rbx
movw $0x6162, (%r9)
and %r9, %r9
lea addresses_UC_ht+0xeec9, %r9
inc %rax
movb $0x61, (%r9)
and $8032, %r9
lea addresses_normal_ht+0xe179, %rsi
lea addresses_D_ht+0x18c75, %rdi
add $5270, %r14
mov $48, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xa677, %r9
sub $22023, %r14
movups (%r9), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
dec %rsi
lea addresses_D_ht+0xd349, %rsi
lea addresses_normal_ht+0x10291, %rdi
nop
nop
cmp %rbx, %rbx
mov $66, %rcx
rep movsq
nop
and $6329, %r10
lea addresses_UC_ht+0x12409, %rsi
lea addresses_UC_ht+0x11b09, %rdi
add $40042, %r9
mov $26, %rcx
rep movsq
nop
add %r10, %r10
lea addresses_normal_ht+0x10b41, %r9
nop
nop
sub $3791, %r14
mov (%r9), %edi
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x16211, %r11
add %r8, %r8
movb $0x51, (%r11)
add $56830, %rbx

// Store
lea addresses_UC+0x1861, %rdi
nop
nop
nop
nop
nop
cmp $43203, %r8
movb $0x51, (%rdi)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_PSE+0x1eb09, %rax
add %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%rax)
nop
cmp $48430, %r14

// Store
lea addresses_A+0x12631, %rax
nop
nop
nop
nop
xor $3162, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rax)
nop
sub $47586, %rax

// Load
lea addresses_UC+0xb84b, %rsi
nop
xor %rbx, %rbx
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
xor $51411, %rsi

// REPMOV
lea addresses_A+0xcce9, %rsi
lea addresses_A+0xfc09, %rdi
nop
nop
nop
sub %r11, %r11
mov $107, %rcx
rep movsw
nop
nop
nop
nop
and $12981, %rdi

// Load
lea addresses_WT+0x73d7, %rsi
nop
nop
nop
nop
and %rbx, %rbx
mov (%rsi), %rdi
nop
nop
cmp $21125, %rsi

// Load
lea addresses_A+0x9009, %rbx
nop
nop
nop
nop
nop
sub $7260, %rax
movb (%rbx), %r14b
nop
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_PSE+0x9141, %r14
nop
nop
nop
nop
nop
xor $13640, %rcx
mov (%r14), %ebx
nop
and $22189, %r8

// Store
lea addresses_UC+0x4ec1, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_PSE+0x18b37, %rcx
nop
nop
nop
sub $32971, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
and %rax, %rax

// Store
lea addresses_RW+0x11f89, %r14
clflush (%r14)
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r14)
nop
nop
sub $16180, %rsi

// Load
lea addresses_normal+0x3809, %rcx
nop
nop
nop
nop
nop
and %r11, %r11
mov (%rcx), %r14w
nop
nop
and $27831, %rdi

// Load
lea addresses_A+0xfc09, %rsi
clflush (%rsi)
nop
nop
nop
nop
add %rdi, %rdi
mov (%rsi), %r8
nop
nop
xor $7801, %rax

// Store
lea addresses_normal+0x10c09, %r14
nop
sub %r8, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%r14)
nop
add %rax, %rax

// Faulty Load
lea addresses_A+0xfc09, %rbx
nop
nop
nop
xor %r8, %r8
mov (%rbx), %r14d
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_A'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
