.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xe7fe, %r11
nop
and $63783, %rbx
movl $0x61626364, (%r11)
sub %rbp, %rbp
lea addresses_WC_ht+0x1db2e, %rax
nop
nop
nop
and $12527, %rdi
movw $0x6162, (%rax)
nop
nop
add $34641, %r11
lea addresses_WT_ht+0x21b3, %rsi
lea addresses_normal_ht+0x138fe, %rdi
nop
nop
add $49434, %r15
mov $93, %rcx
rep movsb
add $64897, %rbx
lea addresses_WT_ht+0xbefe, %rsi
lea addresses_D_ht+0x173fe, %rdi
nop
nop
nop
nop
nop
xor $41990, %r11
mov $36, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x7cfe, %rax
nop
nop
inc %r15
movw $0x6162, (%rax)
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x169fe, %rbp
and %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x66fe, %rbp
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%rbp)
nop
add $5675, %rbx
lea addresses_D_ht+0xadfe, %rsi
lea addresses_normal_ht+0xd5ef, %rdi
cmp %r15, %r15
mov $37, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0xd1b2, %rax
nop
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x412e, %rcx
nop
cmp $49161, %r11
mov (%rcx), %ax
nop
nop
nop
nop
nop
add $39379, %rcx
lea addresses_WC_ht+0xdbfe, %rax
nop
nop
nop
nop
nop
add $20226, %rsi
mov (%rax), %r15w
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x19a7e, %rsi
nop
add $4364, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x87be, %rcx
add $31879, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0xe1e, %r14
nop
nop
nop
nop
nop
xor $49524, %r15
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_normal+0x1dbfe, %rcx
nop
sub %rdi, %rdi
movb (%rcx), %r15b
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_US+0x167fe, %r12
sub $55937, %rax
movw $0x5152, (%r12)
nop
nop
nop
sub %rax, %rax

// Store
mov $0xcfe, %rdi
nop
nop
and $35482, %rcx
movb $0x51, (%rdi)
sub $14131, %r15

// Faulty Load
mov $0xcdab400000007fe, %rax
nop
nop
nop
nop
nop
and $2843, %rsi
mov (%rax), %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'52': 19}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
