.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12b17, %rsi
lea addresses_WC_ht+0x6797, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $74, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $53833, %r11
lea addresses_normal_ht+0x17ca3, %rsi
lea addresses_normal_ht+0x9f17, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $11, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xdf53, %r11
clflush (%r11)
nop
nop
nop
nop
dec %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
sub $60818, %rdi
lea addresses_normal_ht+0x13467, %r15
sub %rdi, %rdi
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
cmp $37825, %rsi
lea addresses_D_ht+0x12557, %r11
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%r11)
nop
nop
nop
nop
nop
and $11641, %rsi
lea addresses_D_ht+0xd797, %r11
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r11)
inc %rax
lea addresses_WT_ht+0x11e61, %rcx
nop
nop
nop
nop
inc %r11
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor $31998, %r15
lea addresses_WT_ht+0x1af97, %rsi
lea addresses_normal_ht+0xd617, %rdi
add $11468, %r15
mov $22, %rcx
rep movsw
nop
xor $52226, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbx
push %rdi
push %rsi

// Store
lea addresses_UC+0x3617, %r15
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r15)

// Exception!!!
nop
nop
nop
nop
mov (0), %r13
nop
nop
nop
xor $22169, %rbx

// Faulty Load
lea addresses_WT+0xce17, %r8
clflush (%r8)
nop
nop
add $33985, %r15
mov (%r8), %di
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'39': 480}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
