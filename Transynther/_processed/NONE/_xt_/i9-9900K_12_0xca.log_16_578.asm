.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb6db, %rsi
lea addresses_WC_ht+0x1a35b, %rdi
nop
nop
xor $22758, %rax
mov $19, %rcx
rep movsb
and $65274, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rsi

// Store
lea addresses_UC+0x1eddb, %rbx
nop
nop
nop
add $38815, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
nop
sub $45583, %rax

// Store
lea addresses_D+0x6a5f, %rsi
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
sub %rsi, %rsi

// Store
lea addresses_WT+0xd7f, %r12
nop
nop
sub $21166, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
xor %r11, %r11

// Load
lea addresses_D+0x13d5b, %r12
and $58555, %r15
movb (%r12), %al
nop
nop
nop
nop
nop
sub $28079, %rsi

// Load
lea addresses_RW+0x519b, %r11
cmp $53271, %r12
mov (%r11), %si
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_US+0x11d5b, %r10
nop
sub $21541, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
xor $56365, %r12

// Faulty Load
lea addresses_PSE+0x1175b, %r11
nop
nop
nop
xor %rbx, %rbx
mov (%r11), %r10d
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'33': 16}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
