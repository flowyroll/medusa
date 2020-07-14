.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xc86f, %r11
nop
nop
nop
nop
nop
add $8024, %r14
mov $0x6162636465666768, %r12
movq %r12, (%r11)
nop
nop
nop
sub $385, %r14
lea addresses_normal_ht+0x306f, %r13
nop
dec %rdi
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
sub %rdi, %rdi
lea addresses_A_ht+0x846f, %r11
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r11)
nop
dec %r14
lea addresses_normal_ht+0xae8f, %rsi
lea addresses_UC_ht+0x26af, %rdi
nop
nop
nop
xor %r12, %r12
mov $49, %rcx
rep movsw
nop
nop
nop
nop
xor $18030, %r11
lea addresses_A_ht+0x6ef, %rsi
lea addresses_UC_ht+0x1c8cf, %rdi
nop
nop
add %rdx, %rdx
mov $73, %rcx
rep movsb
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x8e6f, %rcx
clflush (%rcx)
nop
nop
sub $3082, %r11
mov (%rcx), %edi
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi

// Load
lea addresses_A+0x606f, %rdi
sub $55987, %r11
mov (%rdi), %rbx
nop
nop
nop
nop
inc %r14

// Store
lea addresses_D+0x1a46f, %rax
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
nop
add $50924, %r11

// Store
mov $0x6f, %r11
nop
xor $7131, %rbx
movw $0x5152, (%r11)
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_WT+0xfef, %rax
nop
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rax)
cmp $52881, %rcx

// Faulty Load
lea addresses_WC+0x1606f, %r10
nop
inc %rdi
movaps (%r10), %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'52': 19, '00': 21}
52 00 00 52 52 00 00 52 00 52 00 52 52 00 52 00 00 00 52 52 52 00 00 52 00 00 00 00 00 52 52 00 52 52 00 52 00 52 00 52
*/
