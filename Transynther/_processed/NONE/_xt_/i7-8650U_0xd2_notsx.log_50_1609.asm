.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rbx
push %rdi
lea addresses_WC_ht+0x30e1, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov (%rdi), %r13w
nop
nop
nop
nop
xor $43010, %rbx
lea addresses_UC_ht+0x1396d, %rax
nop
nop
nop
nop
cmp %r13, %r13
mov (%rax), %r11w
nop
and $55320, %rax
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x11c0d, %rsi
nop
nop
cmp $36138, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
inc %rbx

// Store
lea addresses_RW+0xd0ed, %r8
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r8)
dec %r8

// Faulty Load
lea addresses_PSE+0x1120d, %rbx
nop
nop
nop
nop
inc %rcx
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'33': 50}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
