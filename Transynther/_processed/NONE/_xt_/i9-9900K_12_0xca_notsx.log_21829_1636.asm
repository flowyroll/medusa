.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb72c, %rsi
lea addresses_A_ht+0x1c92c, %rdi
nop
nop
dec %rbx
mov $53, %rcx
rep movsl
nop
nop
nop
nop
nop
add $37686, %r10
lea addresses_WC_ht+0xe32c, %rbp
nop
sub $19556, %r12
movl $0x61626364, (%rbp)
and $24384, %rbx
lea addresses_UC_ht+0x792c, %rsi
lea addresses_UC_ht+0x24ec, %rdi
nop
nop
sub %r13, %r13
mov $0, %rcx
rep movsb
add %r12, %r12
lea addresses_D_ht+0x2cec, %rbp
sub $4030, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %rbp
vmovaps %ymm6, (%rbp)
nop
nop
xor $17238, %rbp
lea addresses_WT_ht+0xd12c, %rsi
lea addresses_WC_ht+0x15d7d, %rdi
nop
nop
nop
add $34824, %r10
mov $102, %rcx
rep movsq
nop
and $61124, %r12
lea addresses_WT_ht+0x53fc, %rsi
lea addresses_D_ht+0x13e04, %rdi
clflush (%rsi)
nop
nop
and $52938, %r13
mov $124, %rcx
rep movsw
dec %rdi
lea addresses_WC_ht+0xd5ec, %rdi
add %r10, %r10
movb (%rdi), %cl
nop
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x1eb92, %rsi
lea addresses_normal_ht+0x19b2c, %rdi
nop
nop
nop
nop
nop
and $26287, %rbx
mov $8, %rcx
rep movsq
and %r10, %r10
lea addresses_UC_ht+0xf12c, %rsi
lea addresses_normal_ht+0xf72c, %rdi
nop
sub %rbp, %rbp
mov $68, %rcx
rep movsb
nop
nop
nop
nop
nop
and $8949, %r13
lea addresses_WT_ht+0xde7c, %r12
nop
nop
sub $7742, %r10
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
and %r12, %r12
lea addresses_D_ht+0x161ac, %rsi
nop
sub %rbx, %rbx
movl $0x61626364, (%rsi)
nop
nop
and $56547, %r10
lea addresses_UC_ht+0x1eeac, %rbx
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x807c, %rsi
lea addresses_WT_ht+0xf12c, %rdi
nop
and $34145, %r12
mov $71, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x15cec, %r13
nop
nop
nop
nop
cmp %r10, %r10
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
cmp $25547, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x4b2c, %rsi
nop
nop
sub %r12, %r12
movb $0x51, (%rsi)
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0x1572c, %r13
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r13)
and $43629, %rdi

// Store
lea addresses_PSE+0x52fc, %rsi
nop
sub $47315, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rsi)
nop
nop
cmp $30446, %r11

// REPMOV
lea addresses_RW+0xf0e4, %rsi
lea addresses_WT+0x1dbba, %rdi
clflush (%rsi)
nop
nop
sub $6801, %r9
mov $50, %rcx
rep movsl
nop
and %rdi, %rdi

// Load
lea addresses_RW+0x307c, %rsi
nop
nop
nop
nop
xor $19729, %r13
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
cmp $22814, %r9

// Faulty Load
lea addresses_UC+0x1192c, %rcx
dec %rsi
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
