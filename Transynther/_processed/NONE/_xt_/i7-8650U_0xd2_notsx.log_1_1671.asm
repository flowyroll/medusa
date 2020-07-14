.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb0fc, %rsi
lea addresses_D_ht+0x3380, %rdi
and $28696, %rax
mov $87, %rcx
rep movsw
sub $45565, %rcx
lea addresses_normal_ht+0x5f14, %rsi
lea addresses_normal_ht+0x18b80, %rdi
nop
nop
nop
nop
nop
and $56779, %r9
mov $18, %rcx
rep movsb
nop
nop
nop
nop
sub $16113, %rax
lea addresses_WC_ht+0x13d20, %r15
nop
nop
dec %rcx
movups (%r15), %xmm6
vpextrq $0, %xmm6, %rax
xor $25575, %r15
lea addresses_WT_ht+0x14280, %r9
nop
nop
nop
xor %rbx, %rbx
movb $0x61, (%r9)
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rdi
push %rdx
push %rsi

// Store
mov $0xcf8, %r14
nop
nop
nop
nop
nop
xor $27641, %rax
movw $0x5152, (%r14)
nop
nop
nop
cmp $44057, %rax

// Store
lea addresses_PSE+0x1db04, %rdx
nop
nop
nop
nop
nop
sub $32030, %r10
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
sub $12742, %rdi

// Store
lea addresses_WT+0x17280, %r10
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
sub %r15, %r15

// Faulty Load
lea addresses_normal+0xbb80, %rax
nop
nop
nop
nop
nop
inc %rdi
mov (%rax), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'34': 1}
34
*/
