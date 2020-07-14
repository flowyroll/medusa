.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1cb26, %rsi
lea addresses_A_ht+0xff06, %rdi
nop
sub $54895, %r14
mov $6, %rcx
rep movsb
dec %rdi
lea addresses_normal_ht+0x1ed24, %r9
nop
nop
nop
nop
nop
dec %r14
movw $0x6162, (%r9)
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0xfe26, %rdi
xor $18475, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x77e, %rsi
lea addresses_UC_ht+0x1d696, %rdi
nop
nop
nop
nop
add $26025, %r11
mov $73, %rcx
rep movsl
nop
nop
nop
sub $46949, %rbx
lea addresses_normal_ht+0x11f26, %rsi
lea addresses_D_ht+0x18f36, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r11, %r11
mov $4, %rcx
rep movsw
nop
sub $8966, %rdi
lea addresses_normal_ht+0x1dda6, %rdi
nop
nop
xor %rsi, %rsi
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x12c26, %r9
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%r9)
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x5406, %rsi
lea addresses_WC_ht+0x18226, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $46113, %r11
mov $73, %rcx
rep movsl
nop
nop
cmp $7686, %rsi
lea addresses_normal_ht+0x10366, %r11
xor $13530, %rbx
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1b566, %rsi
lea addresses_UC_ht+0x1266, %rdi
dec %r8
mov $90, %rcx
rep movsb
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x16326, %rsi
lea addresses_UC_ht+0x6726, %rdi
nop
and %r9, %r9
mov $117, %rcx
rep movsb
nop
nop
and $48628, %r9
lea addresses_WC_ht+0x14566, %rbx
nop
and $26629, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x8f26, %r11
nop
nop
nop
nop
add %rdi, %rdi
mov (%r11), %r9w
nop
nop
xor $42687, %r11
lea addresses_WC_ht+0x2b26, %rsi
nop
nop
and $22130, %r8
movb $0x61, (%rsi)
nop
nop
nop
and $18222, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0xf6e2, %r8
nop
and %rbp, %rbp
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
xor $35149, %r11

// Load
lea addresses_WC+0x8176, %r15
nop
nop
nop
xor %r8, %r8
mov (%r15), %bx
nop
nop
nop
nop
and $9078, %r15

// Load
lea addresses_WT+0xc546, %r15
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r15), %rsi
nop
inc %r15

// Load
lea addresses_RW+0x16726, %rbp
nop
xor $7592, %rdi
movb (%rbp), %r11b
nop
nop
nop
nop
and $33978, %rbx

// Store
lea addresses_D+0x1a26, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
cmp $12212, %r8

// Store
mov $0x2642b90000000266, %r15
nop
nop
sub $44595, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r15)
nop
nop
sub $2771, %r8

// Faulty Load
lea addresses_PSE+0x1e726, %r8
nop
nop
nop
nop
cmp %rbx, %rbx
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
