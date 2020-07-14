.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0x2a6b44000000097c, %rdx
nop
nop
nop
nop
nop
sub $36420, %rbx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
add $33342, %r9

// Store
lea addresses_D+0x7e8c, %r9
nop
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%r9)
nop
and $55488, %rbx

// Faulty Load
lea addresses_normal+0x64c4, %rbp
nop
nop
nop
cmp $19229, %rbx
movb (%rbp), %dl
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 71}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
