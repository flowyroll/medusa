.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xc79b, %rsi
lea addresses_A_ht+0x1559b, %rdi
xor $28861, %r10
mov $95, %rcx
rep movsw
nop
nop
nop
nop
xor $7429, %rdx
lea addresses_WC_ht+0x1489b, %rsi
lea addresses_A_ht+0x849b, %rdi
nop
nop
cmp $64615, %r11
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
add $7125, %rdi
lea addresses_WC_ht+0x108b1, %r11
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r11)
and $36423, %rdx
lea addresses_WT_ht+0x1b05b, %rsi
lea addresses_normal_ht+0x10b1b, %rdi
nop
nop
nop
nop
nop
add $27038, %rax
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x110b2, %r10
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r10), %ecx
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x16c5b, %rcx
clflush (%rcx)
and %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
add $38624, %rdx
lea addresses_WC_ht+0xb4db, %r10
nop
and $25821, %rdi
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
and $13652, %rdx
lea addresses_A_ht+0x1025b, %rsi
lea addresses_WC_ht+0x18b32, %rdi
nop
nop
nop
nop
nop
sub $41452, %rbx
mov $85, %rcx
rep movsw
nop
nop
sub $31913, %rsi
lea addresses_WC_ht+0x85b, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $27275, %rdx
mov (%rsi), %ax
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x6f2b, %rdi
and $28672, %rdx
movb $0x61, (%rdi)
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x205b, %rax
nop
sub $17400, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x1a25b, %r11
cmp $14616, %rax
movb (%r11), %cl
add $16583, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x1965b, %r11
nop
nop
add $35044, %rcx
mov (%r11), %r13
nop
nop
nop
and %r13, %r13

// Store
lea addresses_UC+0x182db, %r15
nop
nop
nop
nop
dec %rbx
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
add $6134, %r15

// Store
lea addresses_A+0x585b, %r13
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_UC+0x2ddb, %rdx
nop
add %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
add $60169, %r15

// Store
lea addresses_UC+0x847b, %r11
inc %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_A+0x1ea5b, %rcx
nop
sub %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rcx)
nop
cmp $54458, %rcx

// Store
lea addresses_UC+0x18a5b, %r15
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%r15)
nop
nop
nop
inc %rcx

// Store
lea addresses_WT+0x1fb5b, %r11
nop
xor $2036, %r13
movl $0x51525354, (%r11)
nop
nop
nop
add $65156, %rbx

// REPMOV
lea addresses_PSE+0x1c34b, %rsi
lea addresses_WT+0x1c35b, %rdi
nop
nop
sub %rbx, %rbx
mov $112, %rcx
rep movsb
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_UC+0xf85b, %r11
nop
nop
and $30581, %rcx
mov (%r11), %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
