.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rcx
lea addresses_WC_ht+0xec80, %r14
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%r14)
nop
nop
nop
nop
nop
inc %rax
pop %rcx
pop %rax
pop %r14
pop %r11
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

// Load
mov $0x6b41410000000a80, %rbx
nop
xor $25864, %r11
mov (%rbx), %r14d
nop
nop
sub $18991, %rcx

// Store
mov $0x880, %rbx
nop
nop
nop
nop
nop
sub $1507, %rax
movl $0x51525354, (%rbx)
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_D+0xd080, %r8
add %rdi, %rdi
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
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
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': True, 'congruent': 8}}
{'36': 1}
36
*/
